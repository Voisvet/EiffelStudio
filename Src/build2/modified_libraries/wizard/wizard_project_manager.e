indexing
	description	: "Class which is launching the application."
	author		: "pascalf"
	date		: "$Date$"
	revision	: "$Revision$"

class
	WIZARD_PROJECT_MANAGER

inherit
	EV_APPLICATION
		rename 
			copy as copy_application
		undefine
			help_engine
		select 
			copy_application
		end

	WIZARD_SHARED
		undefine
			default_create
		end
		
	GB_CONSTANTS
		undefine
			default_create
		end
	
	GB_SHARED_STATUS_BAR
		undefine
			default_create
		end
	
	GB_SHARED_XML_HANDLER
		undefine
			default_create
		end
		
	GB_SHARED_TOOLS
		undefine
			default_create
		end

creation
	make_and_launch,
	make_and_launch_as_modify_wizard
	
feature {NONE} -- Initialization

	make_and_launch (hwnd: INTEGER) is
			-- Initialize and launch application
		do
			if argument_count < 1 then
				io.put_string("wizard -arg1 [resource_path]%N")
			else
				default_create
				set_application (Current)
				pnd_motion_actions.extend (agent clear_status_during_transport)
				cancel_actions.extend (agent clear_status_after_transport)
				prepare (hwnd)
			end
		end
		
	make_and_launch_as_modify_wizard (location: STRING) is
			-- Initialize and launch application. Wizard will be launched
			-- directly for interface modification (fourth page).
		do
			default_create
			xml_handler.load_components
			set_application (Current)
			pnd_motion_actions.extend (agent clear_status_during_transport)
			cancel_actions.extend (agent clear_status_after_transport)
			first_window.set_title (Wizard_title)
			if not is_modify_wizard then
				first_window.show
			end
			
				-- We only do this if we are a modify wizard, as
				-- we jump directly to the fourth state (building), and for
				-- this to work, launch must be called.
				-- The type selector is normally set up by the main window, but
				-- when we are the modify_wizard, this is not possible, as we do not
				-- want to show the window until the very last minute (connected below)
				-- so that we reduce flicker.
			if is_modify_wizard then
				post_launch_actions.extend (agent first_window.load_first_state)
				post_launch_actions.extend (agent first_window.show)
				post_launch_actions.extend (agent first_window.enable_maximize)
				post_launch_actions.extend (agent type_selector.ensure_top_item_visible)
			end
			launch
		end

	prepare (hwnd: INTEGER) is
			-- Prepare the first window to be displayed.
			-- Perform one call to first window in order to
			-- avoid to violate the invariant of class EV_APPLICATION.
			-- We center the dialog on the screen.
		local
			screen: EV_SCREEN
		do
			first_window.set_title (Wizard_title)
			create screen
			first_window.set_position (screen.width // 2 - first_window.width // 2, screen.height // 2 - first_window.width // 2)
			first_window.show_modal_to_hwnd (hwnd)
		end

	end_application is
			-- End the current application.
		do
			(create {EV_ENVIRONMENT}).application.destroy
		end

	Wizard_title: STRING is 
			-- Window title for this wizard.
		once
			Result := Envision_build_wizard_title
		ensure
			Valid_result: Result /= Void and then not Result.is_empty
		end
	
end -- class WIZARD_PROJECT_MANAGER


--|----------------------------------------------------------------
--| EiffelWizard: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-2001 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building
--| 360 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support: http://support.eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

