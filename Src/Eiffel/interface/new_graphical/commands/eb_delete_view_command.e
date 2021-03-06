note
	description	: "Command to delete diagram views."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date		: "$Date$"
	revision	: "$Revision$"

class
	EB_DELETE_VIEW_COMMAND

inherit
	EB_CONTEXT_DIAGRAM_COMMAND
		redefine
			menu_name,
			initialize
		end

create
	make

feature {NONE} -- Initialization

	initialize
			-- Initialize default values.
		do
			create accelerator.make_with_key_combination (
				create {EV_KEY}.make_with_code ({EV_KEY_CONSTANTS}.key_x),
				True, False, False)
			accelerator.actions.extend (agent execute)
		end

feature -- Basic operations

	execute
			-- Display confirmation and remove current view if OK pressed.
		do
			if is_sensitive then
				(create {ES_SHARED_PROMPT_PROVIDER}).prompts.show_question_prompt (
					Interface_names.l_Diagram_delete_view_cmd, tool.develop_window.window, agent ok_pressed, Void)
			end
		end

feature {NONE} -- Implementation

	pixmap: EV_PIXMAP
			-- Pixmap representing the command.
		do
			Result := pixmaps.icon_pixmaps.general_delete_icon
		end

	pixel_buffer: EV_PIXEL_BUFFER
			-- Pixel buffer representing the command.
		do
			Result := pixmaps.icon_pixmaps.general_delete_icon_buffer
		end

	tooltip: STRING_GENERAL
			-- Tooltip for the toolbar button.
		do
			Result := Interface_names.f_diagram_delete_view
		end

	menu_name: STRING_GENERAL
			-- Name for the menu entry.
		do
			Result := Interface_names.m_diagram_delete_view
		end

	name: STRING = "Delete_view"
			-- Name of the command. Used to store the command in the
			-- preferences.

feature {NONE} -- Events

	ok_pressed
			-- The user really wants to delete current view.
		local
			ew: EIFFEL_WORLD
		do
			ew := tool.world
			if not ew.current_view.has_substring ("DEFAULT") then
				tool.remove_view (ew.current_view)
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

end -- class EB_DELETE_VIEW_COMMAND
