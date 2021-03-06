note
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	CHARACTER_DIALOG

inherit
	CHARACTER_DIALOG_IMP


feature {NONE} -- Initialization

	user_initialization
			-- called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do	
			set_default_cancel_button (dummy_cancel_button)
			close_request_actions.extend (agent hide)
			xml_character_list.set_column_title ("Character", 1)
			xml_character_list.set_column_title ("Code", 2)
			xml_character_list.set_column_widths (<<100, 100>>)
			html_character_list.set_column_title ("Character", 1)
			html_character_list.set_column_title ("Code", 2)
			html_character_list.set_column_widths (<<100, 100>>)
			populate_xml_list
			populate_html_list
		end

feature {NONE} -- Implementation

	populate_xml_list
			-- Populate XML character list
		local
			l_item: EV_MULTI_COLUMN_LIST_ROW
		do
			from
				xml_characters.start
			until
				xml_characters.after
			loop
				create l_item.default_create
				l_item.extend (xml_characters.item_for_iteration)
				l_item.extend (xml_characters.key_for_iteration)
				l_item.pointer_double_press_actions.force_extend (agent write_character (xml_characters.key_for_iteration))
				xml_character_list.extend (l_item)
				xml_characters.forth
			end
		end	
		
	populate_html_list
			-- Populate HTML character list
		local
			l_item: EV_MULTI_COLUMN_LIST_ROW
		do
			from
				html_characters.start
			until
				html_characters.after
			loop
				create l_item.default_create
				l_item.extend (html_characters.item_for_iteration)
				l_item.extend (html_characters.key_for_iteration)
				l_item.pointer_double_press_actions.force_extend (agent write_character (html_characters.key_for_iteration))
				html_character_list.extend (l_item)
				html_characters.forth
			end
		end	

	write_character (a_code: STRING)
			-- Write character to document
		local
			l_editor: DOCUMENT_EDITOR
		do
			l_editor := (create {SHARED_OBJECTS}).shared_document_manager.current_editor
			if l_editor.current_document /= Void then
				l_editor.text_displayed.insert_string (a_code)
			end
		end		

	xml_characters: HASH_TABLE [STRING, STRING]
			-- XML special characters hashed by code/escape sequence
		once
			create Result.make (5)
			Result.compare_objects
			Result.extend ("<", "&lt;")
			Result.extend (">", "&gt;")
			Result.extend ("'", "&apos;")
			Result.extend ("%"", "&quot;")
			Result.extend ("&", "&amp;")
		end

	html_characters: HASH_TABLE [STRING, STRING]
			-- HTML special characters hashed by code/escape sequence
		once
			create Result.make (10)
			Result.compare_objects
			Result.extend ("<", "&lt;")
			Result.extend (">", "&gt;")
			Result.extend ("'", "&apos;")
			Result.extend ("%"", "&quot;")
			Result.extend ("&", "&amp;")
			Result.extend ("@", "&#064;")
			Result.extend ("...", "&#133;")
			Result.extend ("TM", "&#153;")
			Result.extend ("copyright", "&#169;")
			Result.extend ("registered trademark", "&#174;")
			Result.extend ("blank space", "&#160;")
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
end -- class CHARACTER_DIALOG

