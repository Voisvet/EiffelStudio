indexing
	description	: "Wizard Step."
	author		: "Generated by the Wizard wizard"
	revision	: "1.0.0"

class
	wizard_first_state

inherit
	WIZARD_INTERMEDIARY_STATE_WINDOW
		redefine
			update_state_information,
			proceed_with_current_info,
			build
		end
		
	GB_CONSTANTS

create
	make

feature -- Basic Operation

	build is 
			-- Build entries.
		local
			vertical_box: EV_VERTICAL_BOX
			horizontal_box: EV_HORIZONTAL_BOX
		do
			create directory.make (Current)
			directory.set_label_string_and_size ("Please enter a directory for you project.", 50)
			directory.enable_directory_browse_button
			directory.generate
			choice_box.extend (directory.widget)
		end

	proceed_with_current_info is
			-- User has clicked next, go to next step.
		do
			Precursor
			proceed_with_new_state(create {WIZARD_SECOND_STATE}.make(wizard_information))
		end

	update_state_information is
			-- Check User Entries
		do
			Precursor
		end
		
	directory: WIZARD_SMART_TEXT_FIELD

feature {NONE} -- Implementation

	display_state_text is
			-- Set the messages for this state.
		do
			title.set_text ("Project location")
			subtitle.set_text ("Select project location.")
		end
		
end -- class wizard_first_state
