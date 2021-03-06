note

	description:
			"Widget that draws a line to separate other widget visually."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class
	MEL_SEPARATOR

inherit

	MEL_SEPARATOR_RESOURCES
		export
			{NONE} all
		end;

	MEL_PRIMITIVE

create 
	make,
	make_from_existing

feature -- Initialization

	make (a_name: STRING; a_parent: MEL_COMPOSITE; do_manage: BOOLEAN)
			-- Create a motif separator.
		require
			name_exists: a_name /= Void;
			parent_exists: a_parent /= Void and then not a_parent.is_destroyed
		local
			widget_name: ANY
		do
			parent := a_parent;
			widget_name := a_name.to_c;
			screen_object := xm_create_separator (a_parent.screen_object, $widget_name, default_pointer, 0);
			Mel_widgets.add (Current);
			set_default;
			if do_manage then
				manage
			end
		ensure
			exists: not is_destroyed;
			parent_set: parent = a_parent;
			name_set: name.is_equal (a_name)
		end;

feature -- Status report

	is_horizontal: BOOLEAN
			-- Is separator orientation horizontal?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNorientation) = XmHORIZONTAL
		end;

    is_vertical: BOOLEAN
            -- Is scale orientation vertical?
        require
            exists: not is_destroyed
        do
			Result := get_xt_unsigned_char (screen_object, XmNorientation) = XmVERTICAL
        end;

	is_no_line: BOOLEAN
			-- Is Current displayed as nothing?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNseparatorType) = XmNO_LINE
		end;

	is_single_line: BOOLEAN
			-- Is Current displayed as a single line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNseparatorType) = XmSINGLE_LINE
		end;

	is_double_line: BOOLEAN
			-- Is Current displayed as a double line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNseparatorType) = XmDOUBLE_LINE
		end;

	is_single_dashed_line: BOOLEAN
			-- Is Current displayed as a single dashed line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNseparatorType) = XmSINGLE_DASHED_LINE
		end;

	is_double_dashed_line: BOOLEAN
			-- Is Current displayed as a double dashed line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char (screen_object, XmNseparatorType) = XmDOUBLE_DASHED_LINE
		end;

	is_shadow_etched_in: BOOLEAN
			-- Is Current displayed as a deeper line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char 
				(screen_object, XmNseparatorType) = XmSHADOW_ETCHED_IN
		end;

	is_shadow_etched_out: BOOLEAN
			-- Is Current displayed as a deeper line?
		require
			exists: not is_destroyed
		do
			Result := get_xt_unsigned_char 
					(screen_object, XmNseparatorType) = XmSHADOW_ETCHED_OUT
		end;

feature -- Status setting

    set_horizontal
            -- Set `is_horizontal' to True.
        require
            exists: not is_destroyed
        do
            set_xt_unsigned_char (screen_object, XmNorientation, XmHORIZONTAL)
        ensure
            is_horizontal: is_horizontal
        end;

    set_vertical
            -- Set `is_horizontal' to False.
        require
            exists: not is_destroyed
        do
            set_xt_unsigned_char (screen_object, XmNorientation, XmVERTICAL)
        ensure
            is_vertical: is_vertical
        end;

	set_no_line
			-- Set `is_no_line'.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmNO_LINE)
		ensure
			invisible: is_no_line
		end;

	set_single_line
			-- Set `is_single_line'.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmSINGLE_LINE)
		ensure
			single_line_set: is_single_line
		end;

	set_double_line
			-- Set `is_double_line'.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmDOUBLE_LINE)
		ensure
			double_line_set: is_double_line
		end;

	set_single_dashed_line
			-- Set `is_single_dashed_line'.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmSINGLE_DASHED_LINE)
		ensure
			single_dashed_line_set: is_single_dashed_line
		end;

	set_double_dashed_line
			-- Set `is_double_dashed_line'.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmDOUBLE_DASHED_LINE)
		ensure
			double_dashed_line_set: is_double_dashed_line
		end;

	set_shadow_etched_in
			-- Set `is_shadow_etched_in' to True.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmSHADOW_ETCHED_IN)
		ensure
			is_shadow_etched_in: is_shadow_etched_in 
		end;

	set_shadow_etched_out
			-- Set `is_shadow_etched_out' to True.
		require
			exists: not is_destroyed
		do
			set_xt_unsigned_char (screen_object, XmNseparatorType, XmSHADOW_ETCHED_OUT)
		ensure
			is_shadow_etched_out: is_shadow_etched_out 
		end;

feature {NONE} -- Implementation

	xm_create_separator (a_parent, a_name, arglist: POINTER; argcount: INTEGER): POINTER
		external
			"C (Widget, String, ArgList, Cardinal): EIF_POINTER | <Xm/Separator.h>"
		alias
			"XmCreateSeparator"
		end;

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




end -- class MEL_SEPARATOR


