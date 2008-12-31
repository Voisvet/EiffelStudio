note
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	SHORTCUTS_DIALOG

inherit
	SHORTCUTS_DIALOG_IMP


feature {NONE} -- Initialization

	user_initialization
			-- called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
			keys_combo.disable_edit
			set_default_cancel_button (dummy_cancel_button)
			close_request_actions.extend (agent hide)
			add_button.select_actions.extend (agent add_accelerator)
			populate_widgets 
		end

feature {NONE} -- Implementation

	populate_widgets
			-- Build widgets with data
		do
			populate_accelerator_list
			populate_keys_combo			
		end	

	populate_accelerator_list
			-- Populate accelerator list
		local
			l_keys: HASH_TABLE [STRING, INTEGER]
			l_ev_key_constants: EV_KEY_CONSTANTS
			l_key,
			l_tag: STRING			
			l_list_row: EV_MULTI_COLUMN_LIST_ROW
		do
			accelerator_list.select_actions.force_extend (agent accelerator_list_item_selected)
			accelerator_list.set_column_titles (<<"Ctrl +", "XML text">>)
			accelerator_list.set_column_widths (<<50, 250>>)
			create l_ev_key_constants
			l_keys := accelerator_target.tag_accelerators
			from
				l_keys.start
			until
				l_keys.after
			loop
				l_tag := l_keys.item_for_iteration
				if l_tag /= Void and not l_tag.is_empty then					
					l_key := l_ev_key_constants.key_strings.item (l_keys.key_for_iteration)
					create l_list_row
					l_list_row.extend (l_key)
					l_list_row.extend (unescape_content (l_tag))
					accelerator_list.extend (l_list_row)
				end
				l_keys.forth
			end
		end
		
	unescape_content (a_content: STRING): STRING
			-- Content unescaped.
		do
			Result := a_content.twin
			Result.replace_substring_all ("&lt;", "<")
			Result.replace_substring_all ("&gt;", ">")
		end	

	populate_keys_combo
			-- Populate keys combo
		local
			l_keys: HASH_TABLE [STRING, INTEGER]
			l_ev_key_constants: EV_KEY_CONSTANTS
			l_key: STRING
			l_combo_item: EV_LIST_ITEM
		do
			create l_ev_key_constants
			l_keys := accelerator_target.tag_accelerators
			from
				l_keys.start
			until
				l_keys.after
			loop
				l_key := l_ev_key_constants.key_strings.item (l_keys.key_for_iteration)
				create l_combo_item.make_with_text (l_key)
				l_combo_item.set_data (l_keys.key_for_iteration)
				keys_combo.extend (l_combo_item)
				l_keys.forth
			end
		end		

	add_accelerator
			-- Add accelerator to list
		local
			l_found: BOOLEAN
			l_row: EV_MULTI_COLUMN_LIST_ROW
			l_key: EV_KEY
			l_accelerator: EV_ACCELERATOR
			l_code: INTEGER_REF
		do
			l_code ?= keys_combo.selected_item.data
			create l_key.make_with_code (l_code.item)
			from
				accelerator_list.start
			until
				accelerator_list.after
			loop
				if accelerator_list.item.first.is_equal (keys_combo.selected_item.text) then					
					accelerator_list.item.go_i_th (2)
					accelerator_list.item.replace (tag_text_field.text)
					create l_accelerator.make_with_key_combination (l_key, True, False, False)
					accelerator_target.add_tag_accelerator (l_accelerator, tag_text_field.text)
					l_found := True
				end
				accelerator_list.forth
			end
			
			if not l_found then
				create l_row
				l_row.extend (keys_combo.selected_item.text)
				l_row.extend (tag_text_field.text)
				accelerator_list.extend (l_row)
				create l_accelerator.make_with_key_combination (l_key, True, False, False)
				accelerator_target.add_tag_accelerator (l_accelerator, tag_text_field.text)
			end
		end		

	accelerator_target: DOC_BUILDER_WINDOW
			-- Target for accelerators
		once
			Result := (create {SHARED_OBJECTS}).application_window
		end

feature {NONE} -- Events

	accelerator_list_item_selected
			-- An item was selected in the accelerator list
		local
			l_list_row: EV_MULTI_COLUMN_LIST_ROW
			item_found: BOOLEAN
		do
			l_list_row := accelerator_list.selected_item	
			tag_text_field.set_text (l_list_row.i_th (2))
			if l_list_row /= Void then
				from
					keys_combo.start
				until
					keys_combo.after or item_found
				loop
					item_found := keys_combo.item.text.is_equal (l_list_row.first)
					if item_found then
						keys_combo.item.enable_select
					end
					keys_combo.forth
				end
			end
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
end -- class SHORTCUTS_DIALOG

