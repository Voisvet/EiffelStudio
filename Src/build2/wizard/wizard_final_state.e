indexing
	description	: "Wizard Final Step"
	author		: "Generated by the Wizard wizard"
	revision	: "1.0.0"

class
	WIZARD_FINAL_STATE

inherit
	WIZARD_FINAL_STATE_WINDOW
		redefine
			proceed_with_current_info,
			back
		end

	GB_SHARED_TOOLS
	
	GB_WIDGET_UTILITIES
	
	GB_SHARED_SYSTEM_STATUS
	
	GB_SHARED_XML_HANDLER
	
	GB_CONSTANTS
	
	GB_SHARED_SYSTEM_STATUS

creation
	make

feature {NONE} -- Implementation

	build_finish is 
			-- Build user entries.
			--
			-- Note: You can remove this feature if you don't need
			--       a progress bar.
		local
			h1: EV_HORIZONTAL_BOX
		do
			graphically_replace_window (first_window, main_window)	
			choice_box.wipe_out
			choice_box.set_border_width (10)
			create progress 
			progress.set_minimum_height(20)
			progress.set_minimum_width(100)
			create progress_text
			choice_box.extend(create {EV_CELL})
			choice_box.extend(progress)
			choice_box.disable_item_expand(progress)
			choice_box.extend(progress_text)
			choice_box.extend(create {EV_CELL})

			choice_box.set_background_color (white_color)
			progress.set_background_color (white_color)
			progress_text.set_background_color (white_color)
		end

	process_info is
			-- Process the wizard information
		local
			code_generator: GB_CODE_GENERATOR
		do
				-- The wizard generated code seems to leave the
				-- window locked, so we unlock it. We check first,
				-- so that if somebody fixes this, then our code
				-- will not fail.
			if (create {EV_ENVIRONMENT}).application.locked_window = first_window then
				first_window.unlock_update
			end
			system_status.current_project_settings.save
			create code_generator
			code_generator.set_progress_bar (progress)
			code_generator.generate
			xml_handler.save
			--| Add here the action of your wizard.
			--|
			--| Update `progress' and `progress_text' to give a
			--| a feedback to the user of what you are currently
			--| doing.
		end

	proceed_with_current_info is
			-- User has clicked "finish", proceed...
		do
			build_finish
			process_info
			Precursor
		end

	display_state_text is
			-- Set the messages for this state.
		do
			title.set_text ("Completing the%N" + wizard_title)
			message.set_text (final_message)
		end

	final_message: STRING is
		do
			Result := "Clicking 'Finish' will generate a new Eiffel Vision2%
			%%Nproject with the following information : %N%N" +
			"Project location : " + system_status.current_project_settings.project_location +
			"%N%NProject name : " + system_status.current_project_settings.project_name +
			"%NApplication class name : " + system_status.current_project_settings.application_class_name +
			"%NWindow class name : " + system_status.current_project_settings.main_window_class_name
		ensure
			Result /= Void
		end

	pixmap_icon_location: FILE_NAME is
			--
		once
			create Result.make_from_string ("eiffel_wizard_icon.png")
		end
	
	back is
			--
		do
			Precursor {WIZARD_FINAL_STATE_WINDOW}
			main_window.show
			first_window.hide
		end
		

end -- class WIZARD_FINAL_STATE
