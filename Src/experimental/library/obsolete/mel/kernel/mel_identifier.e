note

	description: 
		"Encapsulation of an identifier for work, input and timer callbacks."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision $"

class MEL_IDENTIFIER

inherit

	SHARED_MEL_DISPATCHER

create {MEL_DISPATCHER}

	make_timer, make_input, make_work_proc

feature {NONE} -- Initialization

	make_timer (an_id: POINTER)
			-- Create an identifier representing a Motif identifier
			-- for a timer.
		require
			an_id_not_null: an_id /= default_pointer
		do
			type := Timer_type;
			identifier := an_id
		ensure
			set: identifier = an_id;
			is_timer: is_timer
		end;

	make_input (an_id: POINTER)
			-- Create an identifier representing a Motif identifier
			-- for a timer.
		require
			an_id_not_null: an_id /= default_pointer
		do
			type := Input_type;
			identifier := an_id
		ensure
			set: identifier = an_id;
			is_input: is_input
		end;

	make_work_proc (an_id: POINTER)
			-- Create an identifier representing a Motif identifier
			-- for a timer.
		require
			an_id_not_null: an_id /= default_pointer
		do
			type := Work_proc_type;
			identifier := an_id
		ensure
			set: identifier = an_id;
			is_work_proc: is_work_proc
		end;

feature -- Access

	is_valid: BOOLEAN
			-- Is the identifier valid?
		do	
			Result := identifier /= default_pointer
		ensure
			true_if_not_null: Result implies identifier /= default_pointer
		end;

	is_timer: BOOLEAN
			-- Is Current a timer identifier
		do
			Result := type = Timer_type
		end;

	is_input: BOOLEAN
			-- Is Current an input identifier
		do
			Result := type = Input_type
		end;

	is_work_proc: BOOLEAN
			-- Is Current a work procedure identifier
		do
			Result := type = Work_proc_type
		end;

feature -- Removal

	remove
			-- Remove identifier from server.
			-- (Call XtRemoveInput if input, XtRemoveTimer if timer
			-- or XtRemoveWorkProc if work_proc).
		require
			is_valid: is_valid;
			valid_type: is_work_proc or else 
					is_input or else
					is_timer
		do
			if is_input then
				Mel_dispatcher.remove_input_callback (Current)
			elseif is_timer then
				Mel_dispatcher.remove_timer_callback (Current)
			else 
				check
					is_work_proc: is_work_proc
				end;
				Mel_dispatcher.remove_work_proc_callback (Current)
			end;
			identifier := default_pointer
		end;

feature {MEL_DISPATCHER} -- Implementation

	identifier: POINTER;
			-- Associated C identifier

feature {NONE} -- Implementation

	type: INTEGER;
			-- Identifier type

	Timer_type: INTEGER = UNIQUE;
	Input_type: INTEGER = UNIQUE;
	Work_proc_type: INTEGER = UNIQUE;;

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- class MEL_IDENTIFIER


