﻿note
	description: "[
					Generated by EiffelRibbon tool
					Don't edit this file, since it will be replaced by EiffelRibbon tool
					generated files everytime
						]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MENU_GROUP_1_IMP

inherit
	EV_RIBBON_APPLICATION_MENU_GROUP

feature {NONE} -- Initialization

	create_interface_objects
			-- Create objects
		do
			create button_3.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.button_3>>)

			create buttons.make (1)
			buttons.extend (button_3)

		end

feature -- Query

	button_3: BUTTON_3


end

