class
	SERVER_THREAD

inherit
	THREAD
		rename
			make as thread_make
		end

	UTILITY

create
	make, make_with_port

feature -- Constants

	default_port: NATURAL_16 = 69

feature -- Initialization

	make (a_frontend: TFTP_FRONTEND)
		require
			frontend_non_void: a_frontend /= Void
		do
			make_with_port (a_frontend, default_port)
		end

	make_with_port (a_frontend: TFTP_FRONTEND; a_port: NATURAL_16)
		require
			frontend_non_void: a_frontend /= Void
		do
			thread_make
			create listeners.make (0)
			frontend := a_frontend
			port := a_port
			create server_socket.make_bound (port)
			create mutex.make
		end

feature

	execute
			-- Routine executed by new thread.
		local
			packet: TFTP_REQUEST_PACKET
			opcode: INTEGER
			can_read, can_write: BOOLEAN
			done: BOOLEAN
			wt: SERVER_WORKER_THREAD
		do
			frontend.log_message_by_source ("SERVER:", 2, "Tftp Server thread started.");
			from
				done := False
			until
				done
			loop
				packet := receive_request (server_socket)
				if packet /= Void then
					opcode := packet.opcode
					dispatch_tftp_event (Create {TFTP_EVENT}.make (packet.host, packet.port, {TFTP_EVENT}.REQUEST_RECEIVED, opcode, Void))
					if opcode = {TFTP_PACKET}.wrq or else opcode = {TFTP_PACKET}.rrq then
						can_read := frontend.allow_read (packet.host)
						can_write := frontend.allow_write (packet.host)
						if opcode = {TFTP_PACKET}.RRQ and then not can_read  then
							frontend.log_message_by_address (packet.host, 2, "Read requests not allowed for this client.")
						end
						if opcode = {TFTP_PACKET}.WRQ and then not can_write then
							frontend.log_message_by_address (packet.host, 2, "Write requests not allowed for this client.");
						end
						if (opcode = {TFTP_PACKET}.RRQ and then can_read) or (opcode = {TFTP_PACKET}.WRQ and then can_write) then
							create wt.make (Current, frontend, packet)
							wt.launch
						end
					end
				end
			end
			frontend.log_message_by_source ("SERVER:", 2,"Tftp Server thread stopped.")
		end

	worker_terminated (id: STRING)
		require
			id_non_void: id /= Void
			id_non_epty: not id.is_empty
		do
		end

	dispatch_tftp_event (event: TFTP_EVENT)
		require
			event_non_void: event /= Void
		do
			mutex.lock
			from
				listeners.start
			until
				listeners.after
			loop
				listeners.item.tftp_message (event)
				listeners.forth
			end
			mutex.unlock
		end

	sent_data (data_length: INTEGER)
		do
			mutex.lock
			from
				listeners.start
			until
				listeners.after
			loop
				listeners.item.sent_data (data_length)
				listeners.forth
			end
			mutex.unlock
		end

	received_data (data_length: INTEGER)
		do
			mutex.lock
			from
				listeners.start
			until
				listeners.after
			loop
				listeners.item.received_data (data_length)
				listeners.forth
			end
			mutex.unlock
		end

	add_tftp_event_listener (listener: TFTP_EVENT_LISTENER)
		require
			listener_non_void: listener /= Void
		do
			mutex.lock
			listeners.extend (listener)
			mutex.unlock
		end

	remove_tftp_event_listener (listener: TFTP_EVENT_LISTENER)
		require
			listener_non_void: listener /= Void
		do
			mutex.lock
			listeners.prune_all (listener)
			mutex.unlock
		end

feature {NONE} -- Implementation

	server_socket: NETWORK_DATAGRAM_SOCKET
	mutex: MUTEX
	frontend: TFTP_FRONTEND
	port: NATURAL_16
	listeners: ARRAYED_LIST [TFTP_EVENT_LISTENER]

end
