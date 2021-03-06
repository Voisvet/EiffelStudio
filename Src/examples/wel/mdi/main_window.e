note
	legal: "See notice at end of class."
	status: "See notice at end of class."
class
	MAIN_WINDOW

inherit
	WEL_MDI_FRAME_WINDOW
		redefine
			on_menu_command,
			class_icon
		end

	APPLICATION_IDS
		export
			{NONE} all
		end

create
	make

feature {NONE} -- Initialization

	make
		do
			make_top (Title, main_menu.popup_menu (1), 1000)
			set_menu (main_menu)
		end

feature {NONE} -- Implementation

	on_menu_command (menu_id: INTEGER)
		local
			child: WEL_MDI_CHILD_WINDOW
			s: STRING
			l_window: like active_window
		do
			inspect
				menu_id
			when Cmd_file_new then
				child_no := child_no + 1
				s := "Child window "
				s.append_integer (child_no)
				create child.make (Current, s)
			when Cmd_file_close then
				if has_active_window then
					l_window := active_window
						-- Per postcondition of `has_active_window'.
					check l_window_attached: l_window /= Void end
					l_window.destroy
				end
			when Cmd_file_exit then
				if closeable then
					destroy
				end
			when Cmd_window_tile_vertical then
				tile_children_vertical
			when Cmd_window_tile_horizontal then
				tile_children_horizontal
			when Cmd_window_cascade then
				cascade_children
			when Cmd_window_arrange then
				arrange_icons
			else
			end
		end

	child_no: INTEGER

	main_menu: WEL_MENU
		once
			create Result.make_by_id (Id_menu_application)
		ensure
			result_not_void: Result /= Void
		end

	class_icon: WEL_ICON
		once
			create Result.make_by_id (Id_ico_application)
		end

	Title: STRING = "WEL Multiple Document Interface";
			-- Window's title

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


end -- class MAIN_WINDOW

