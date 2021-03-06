note

	description: "This class represents a MS_IMPseparator"
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class

	SEPARATOR_IMP

inherit
	PRIMITIVE_IMP
		redefine
			set_foreground_color,
			set_managed,
			realize,
			realized,
			set_width,
			set_height,
			set_size,
			set_x,
			set_y,
			destroy
		end

	WEL_CONTROL_WINDOW
		rename
			make as wel_make,
			show as wel_show,
			hide as wel_hide,
			destroy as wel_destroy,
			x as wel_x,
			y as wel_y,
			width as wel_width,
			height as wel_height,
			set_x as wel_set_x,
			set_y as wel_set_y,
			set_width as wel_set_width,
			set_height as wel_set_height,
			shown as wel_shown,
			parent as wel_parent,
			text as wel_text,
			text_length as wel_text_length,
			set_text as wel_set_text,
			move as wel_move,
			set_focus as wel_set_focus,
			set_capture as wel_set_capture,
			release_capture as wel_release_capture,
			item as wel_item,
			font as wel_control_font,
			set_font as wel_control_set_font
		undefine
			class_background,
			background_brush,
			on_show,
			on_hide,
			on_size,
			on_move,
			on_right_button_up, on_left_button_down,
			on_left_button_up, on_right_button_down,
			on_mouse_move, on_destroy, on_set_cursor,
			on_key_up,
			on_key_down
		redefine
			on_paint,
			class_name
		end

	SEPARATOR_I

	WEL_PS_CONSTANTS

create

	make

feature -- Initialization

	make (a_separator: SEPARATOR; man: BOOLEAN; oui_parent: COMPOSITE)
			-- Make widget and set defaults.
		local
			local_menu: WEL_MENU
		do
			create private_attributes
			parent ?= oui_parent.implementation
			local_menu ?= parent
			if local_menu /= Void then
				in_menu:= True
			end
			managed := man
			set_horizontal (true)
			set_default_pen
			set_single_line
			set_form_width (1)
			set_form_height (1)
		end

feature -- Status report

	is_horizontal: BOOLEAN
			-- Is this separator horizontal?

	in_menu: BOOLEAN
			-- Is current separator in a menu?

	realized: BOOLEAN
			-- Is Current realized?
		do
			if not in_menu then
				Result := exists
			else
				Result := parent.realized
			end
		end

	double: BOOLEAN
			-- Has current separator a double line?

feature -- Status setting

	set_3d_separator
			-- Set the separator to be Windows 3D
		do
			if is_horizontal then
				set_form_height (4)
			else
				set_form_width (4)
			end
			w3d_separator := True
		end

	set_foreground_color (c: COLOR)
			-- Set the foreground color of current widget.
		do
			private_foreground_color := c
			if double then
				set_double_line
			else
				set_single_line
			end
			if exists then
				invalidate
			end
		end

	set_managed (flag: BOOLEAN)
			-- Enable geometry managment on screen widget implementation,
			-- by window manager of parent widget if `flag', disable it
			-- otherwise.
		local
			mp: MENU_PULL_IMP
		do
			if in_menu then
				if realized then
					if parent /= Void and parent.realized and then parent.exists then
						if not managed and then flag then
							managed := flag
							mp ?= parent
							mp.manage_item (Current)
						elseif managed and then not flag then
							managed := flag
							mp ?= parent
							mp.unmanage_item (Current)
						end
					end
				else
					managed := flag
					realize
				end
				managed := flag
			else
				Precursor {PRIMITIVE_IMP} (flag)
			end
		end

	set_size (a_width, a_height: INTEGER)
			-- Set the size.
		do
			if private_attributes.width /= a_width
			or else private_attributes.height /= a_height then
				if in_menu then
					debug ("WINDOWS")
						io.print ("Inapplicable feature: set_size%N")
						io.print ("called in SEPARATOR_IMP%N")
						io.print ("Reason: Separator is in menu%N")
					end
				else
					private_attributes.set_width (a_width)
					private_attributes.set_height (a_height)
					if exists then
						resize (a_width, a_height)
					end
					if parent /= Void then
						parent.child_has_resized
					end
				end
			end
		end

	set_width (a_width: INTEGER)
			-- Set the width.
		do
			if private_attributes.width /= a_width then
				if in_menu then
					debug ("WINDOWS")
						io.print ("Inapplicable feature: set_width%N")
						io.print ("called in SEPARATOR_IMP%N")
						io.print ("Reason: Separator is in menu%N")
					end
				else
					private_attributes.set_width (a_width)
					if exists then
						wel_set_width (a_width)
					end
					if parent /= Void then
						parent.child_has_resized
					end
				end
			end
		end

	set_height (a_height: INTEGER)
			-- Set the height.
		do
			if private_attributes.height /= a_height then
				if in_menu then
					debug ("WINDOWS")
						io.print ("Inapplicable feature: set_height%N")
						io.print ("called in SEPARATOR_IMP%N")
						io.print ("Reason: Separator is in menu%N")
					end
				else
					private_attributes.set_height (a_height)
					if exists then
						wel_set_height (a_height)
					end
					if parent /= Void then
						parent.child_has_resized
					end
				end
			end
		end

	set_x (a_x: INTEGER)
			-- Set x coordinate.
		do
			if in_menu then
				debug ("WINDOWS")
					io.print ("Inapplicable feature: set_x%N")
					io.print ("called in SEPARATOR_IMP%N")
					io.print ("Reason: Separator is in menu%N")
				end
			else
				if exists then
					wel_set_x (a_x)
				end
			end
			private_attributes.set_x (a_x)
		end

	set_y (a_y: INTEGER)
			-- Set y coordinate.
		do
			if in_menu then
				debug ("WINDOWS")
					io.print ("Inapplicable feature: set_y%N")
					io.print ("called in SEPARATOR_IMP%N")
					io.print ("Reason: Separator is in menu%N")
				end
			else
				if exists then
					wel_set_y (a_y)
				end
			end
			private_attributes.set_y (a_y)
		end

	realize
			-- Realize separator.
		local
			local_menu: WEL_MENU
			wc: WEL_COMPOSITE_WINDOW
		do
			if not in_menu then
				if not realized then
					wc ?= parent
					make_with_coordinates (wc, "", x, y, width, height)
				end
			else
				local_menu ?= parent
				check
					local_menu_exists: local_menu /= Void
				end
				local_menu.append_separator
			end
		end

	set_double_dashed_line
			-- Set separator to be double dashed.
		do
			create pen.make (Ps_dash, 1, pen_color)
			double := True
			if exists then
				invalidate
			end
		ensure then
			is_horizontal implies (height >= 5)
			not is_horizontal implies (width >= 5)
		end

	set_double_line
			-- Set separator to be double line.
		do
			create pen.make (Ps_solid, 1, pen_color)
			double := True
			if exists then
				invalidate
			end
		ensure then
			is_horizontal implies (height >= 5)
			not is_horizontal implies (width >= 5)
		end

	set_horizontal (flag: BOOLEAN)
			-- Set separator to be double horizontal.
		do
			if is_horizontal /= flag then
				if exists then
					invalidate
				end
				is_horizontal := flag
			end

			if flag then
				set_form_height (4)
			else
				set_form_width (4)
			end

			if exists then
				invalidate
			end
		ensure then
			is_horizontal_equals_flag: is_horizontal = flag
		end

	set_no_line
			-- Set separator to have no line.
		do
			create pen.make (Ps_null, 1, pen_color)
			if exists then
				invalidate
			end
		end

	set_single_dashed_line
			-- Set separator to be a single dashed line.
		do
			create pen.make (Ps_dash, 1, pen_color)
			double := False
			if exists then
				invalidate
			end
		end

	set_single_line
			-- Set separator to be a single line.
		do
			create pen.make (Ps_solid, 1, pen_color)
			double := False
			if exists then
				invalidate
			end
		end

feature -- Removal

	destroy (wid_list: LINKED_LIST [WIDGET])
			-- Destroy Current.
		local
			ww: WIDGET_IMP
		do
			if
				in_menu and then
				managed
			then
				set_managed (False)
			end
			if exists then
				wel_destroy
			end
			from
				wid_list.start
			until
				wid_list.after
			loop
				ww ?= wid_list.item.implementation
				actions_manager_list.deregister (ww)
				wid_list.forth
			end
		end

feature {NONE} -- Implementation

	w3d_separator: BOOLEAN
			-- Is separator 3D Windows standard?

	on_paint (a_paint_dc: WEL_PAINT_DC; a_rect: WEL_RECT)
			-- Repaint separator.
		local
			a_pen: WEL_PEN
			color: WEL_COLOR_REF
		do
			if w3d_separator then
				create color.make_system (Color_btnshadow)
				create a_pen.make (Ps_solid, 1, color)
				a_paint_dc.select_pen (a_pen)

				if is_horizontal then
					a_paint_dc.line (0, height // 2 - 1, width, height // 2 - 1)
				else
					a_paint_dc.line (width // 2 - 1, 0, width // 2 - 1, height)
				end
				create color.make_system (Color_btnhighlight)
				create a_pen.make (Ps_solid, 1, color)
				a_paint_dc.select_pen (a_pen)

				if is_horizontal then
					a_paint_dc.line (0, height // 2, width, height // 2)
				else
					a_paint_dc.line (width // 2, 0, width // 2, height)
				end
			else
				a_paint_dc.select_pen (pen)
				a_paint_dc.set_background_color (c_background)
				if is_horizontal then
					if double then
						a_paint_dc.line (0, height // 2 - 1, width, height // 2 - 1)
						a_paint_dc.line (0, height // 2 + 1, width, height // 2 + 1)
					else
						a_paint_dc.line (0, height // 2, width, height // 2)
					end
				else
					if double then
						a_paint_dc.line (width // 2 - 1, 0, width // 2 - 1, height)
						a_paint_dc.line (width // 2 + 1, 0, width // 2 + 1, height)
					else
						a_paint_dc.line (width // 2, 0, width // 2, height)
					end
				end
			end
		end

	pen: WEL_PEN
			-- Pen used for drawing the separator.

	c_background: WEL_COLOR_REF
			-- Color background
		once
			create Result.make_system (Color_window)
		end

	pen_color: WEL_COLOR_REF
			-- Color of the pen to draw separator.
		do
			if foreground_color.implementation /= Void then
				Result ?= foreground_color.implementation
			else
				Result := black_color
			end
		ensure
			result_not_void: Result /= Void
		end

	black_color: WEL_COLOR_REF
			-- Black color
		once
			create Result.make_rgb (0, 0, 0)
		ensure
			result_exists: Result /= Void
		end

	set_default_pen
			-- Set default pen to draw separator.
		do
			create pen.make (Ps_solid, 1, black_color)
		end

	class_name: STRING_32
			-- Class name
		do
			Result := "EVisionSeparator"
		end

feature {NONE} -- Inapplicable

	wel_font: WEL_FONT

	wel_set_font (f:WEL_FONT)
		do
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




end -- class SEPARATOR_IMP

