note
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CHARACTER_DIALOG_IMP

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_DIALOG generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_notebook_1
			create l_ev_vertical_box_1
			create xml_character_list
			create l_ev_vertical_box_2
			create html_character_list
			create dummy_cancel_button
			
				-- Build_widget_structure.
			extend (l_ev_notebook_1)
			l_ev_notebook_1.extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (xml_character_list)
			l_ev_notebook_1.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (html_character_list)
			l_ev_vertical_box_2.extend (dummy_cancel_button)
			
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_1, "XML Characters")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_2, "HTML Characters")
			l_ev_vertical_box_1.set_padding_width (5)
			l_ev_vertical_box_1.set_border_width (2)
			l_ev_vertical_box_2.disable_item_expand (dummy_cancel_button)
			dummy_cancel_button.set_text ("Cancel")
			dummy_cancel_button.set_minimum_width (0)
			dummy_cancel_button.set_minimum_height (0)
			set_minimum_width (300)
			set_minimum_height (dialog_medium_height)
			set_title ("Special Characters")
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	xml_character_list: EV_MULTI_COLUMN_LIST
	html_character_list: EV_MULTI_COLUMN_LIST
	dummy_cancel_button: EV_BUTTON
	l_ev_notebook_1: EV_NOTEBOOK
	l_ev_vertical_box_1: EV_VERTICAL_BOX
	l_ev_vertical_box_2: EV_VERTICAL_BOX

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"
end -- class CHARACTER_DIALOG_IMP
