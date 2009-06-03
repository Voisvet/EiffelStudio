note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

class
	TAG_POINT_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

create
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER)
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	x: INTEGER
			-- No description available.
		do
			Result := ccom_tag_point_x (item)
		end

	y: INTEGER
			-- No description available.
		do
			Result := ccom_tag_point_y (item)
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size of structure
		do
			Result := c_size_of_tag_point
		end

feature -- Basic Operations

	set_x (a_x: INTEGER)
			-- Set `x' with `a_x'.
		do
			ccom_tag_point_set_x (item, a_x)
		end

	set_y (a_y: INTEGER)
			-- Set `y' with `a_y'.
		do
			ccom_tag_point_set_y (item, a_y)
		end

feature {NONE}  -- Externals

	c_size_of_tag_point: INTEGER
			-- Size of structure
		external
			"C [macro %"ecom_control_library_tagPOINT_s.h%"]"
		alias
			"sizeof(ecom_control_library::tagPOINT)"
		end

	ccom_tag_point_x (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagPOINT_s_impl.h%"](ecom_control_library::tagPOINT *):EIF_INTEGER"
		end

	ccom_tag_point_set_x (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagPOINT_s_impl.h%"](ecom_control_library::tagPOINT *, LONG)"
		end

	ccom_tag_point_y (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagPOINT_s_impl.h%"](ecom_control_library::tagPOINT *):EIF_INTEGER"
		end

	ccom_tag_point_set_y (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagPOINT_s_impl.h%"](ecom_control_library::tagPOINT *, LONG)"
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




end -- TAG_POINT_RECORD

