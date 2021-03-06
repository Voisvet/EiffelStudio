note
	description: "Objects that represent the Vision2 application.%
		%The original version of this class has been generated by EiffelBuild."
	generator: "EiffelBuild"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"


class
	DESKTOP_APP

inherit
	EV_APPLICATION

create
	make_and_launch

feature {NONE} -- Initialization

	make_and_launch
			-- Create `Current', build and display `main_window',
			-- then launch the application.
		local
			l_win: like main_window
			l_embedded_service: separate APP_EMBEDDED_WEB_SERVICE
		do
			default_create
			create l_win.make
			main_window := l_win
			l_win.show
			create l_embedded_service.make
			setup_and_launch_web_service (l_embedded_service)
			launch
		end


	setup_and_launch_web_service (a_web_service: separate APP_EMBEDDED_WEB_SERVICE)
		do
			a_web_service.set_port_number (0) -- Use first available port number
			a_web_service.set_on_launched_action (agent on_web_service_launched (a_web_service))
			a_web_service.launch
		end

	on_quit
		do
			if attached main_window as win then
				win.destroy_and_exit_if_last
			end
		end

	on_web_service_launched (a_web_service: separate APP_EMBEDDED_WEB_SERVICE)
		do
			if attached main_window as win then
				add_idle_action_kamikaze (agent wait_for_termination (a_web_service, Void))
				add_idle_action_kamikaze (agent win.open_link)
			end
		end

	wait_for_termination (a_web_service: separate APP_EMBEDDED_WEB_SERVICE; a_timeout: detachable EV_TIMEOUT)
		local
			t: detachable EV_TIMEOUT
		do
			t := a_timeout
			if t /= Void then
				t.set_interval (0)
			end
			if
				attached a_web_service.observer as obs and then
				observer_has_terminaded (obs)
			then
				if t /= Void then
					t.destroy
				end
				on_quit
			else
				if t = Void then
					create t
					t.actions.extend (agent wait_for_termination (a_web_service, t))
				else
					t.set_interval (1_000)
				end
				t.set_interval (1_000)
			end
		end

	observer_has_terminaded (obs: separate WGI_STANDALONE_SERVER_OBSERVER): BOOLEAN
		do
			Result := obs.terminated
		end

feature {NONE} -- Implementation

	main_window: detachable MAIN_WINDOW
		-- Main window of `Current'

;note
	copyright:	"Copyright (c) 1984-2009, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"


end
