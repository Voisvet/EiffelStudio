note
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MA_FILTER_WINDOW_IMP

inherit
	EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end
			
	MA_CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize
			-- Initialize `Current'.
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create l_ev_tool_bar_1
			create file_open
			create file_save
			create l_ev_tool_bar_separator_1
			create add_new_class_name
			create del_class_name
			create grid
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_tool_bar_1)
			l_ev_tool_bar_1.extend (file_open)
			l_ev_tool_bar_1.extend (file_save)
			l_ev_tool_bar_1.extend (l_ev_tool_bar_separator_1)
			l_ev_tool_bar_1.extend (add_new_class_name)
			l_ev_tool_bar_1.extend (del_class_name)
			l_ev_vertical_box_1.extend (grid)
			
			l_ev_vertical_box_1.disable_item_expand (l_ev_tool_bar_1)
			file_open.set_tooltip (tb_filter_open)
			file_save.set_tooltip (tb_filter_save)
			add_new_class_name.set_tooltip (tb_add_new_class_name)
			set_title (wnd_filter_name)
			
				--Connect events.
			file_open.select_actions.extend (agent open_clicked)
			file_save.select_actions.extend (agent save_clicked)
			add_new_class_name.select_actions.extend (agent add_new_class_name_clicked)
			del_class_name.pointer_button_press_actions.extend (agent del_class_clicked (?, ?, ?, ?, ?, ?, ?, ?))
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	grid: EV_GRID
	file_open, file_save, add_new_class_name, del_class_name: EV_TOOL_BAR_BUTTON

feature {NONE} -- Implementation

	l_ev_tool_bar_separator_1: EV_TOOL_BAR_SEPARATOR
	l_ev_tool_bar_1: EV_TOOL_BAR
	l_ev_vertical_box_1: EV_VERTICAL_BOX

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
	
	open_clicked
			-- Called by `select_actions' of `file_open'.
		deferred
		end
	
	save_clicked
			-- Called by `select_actions' of `file_save'.
		deferred
		end
	
	add_new_class_name_clicked
			-- Called by `select_actions' of `add_new_class_name'.
		deferred
		end
	
	del_class_clicked (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			-- Called by `pointer_button_press_actions' of `del_class_name'.
		deferred
		end
	

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




end -- class MA_FILTER_WINDOW_IMP
