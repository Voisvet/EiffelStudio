indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	TAG_TYPEDESC_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

creation
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make is
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER) is
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	x__midl_0008: X__MIDL_IOLE_AUTOMATION_TYPES_0005_UNION is
			-- No description available.
		do
			Result := ccom_tag_typedesc_x__midl_0008 (item)
		ensure
			valid_x__midl_0008: Result.item /= default_pointer
		end

	vt: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_typedesc_vt (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_tag_typedesc
		end

feature -- Basic Operations

	set___midl_0008 (a_x__midl_0008: X__MIDL_IOLE_AUTOMATION_TYPES_0005_UNION) is
			-- Set `x__midl_0008' with `a_x__midl_0008'.
		require
			non_void_a_x__midl_0008: a_x__midl_0008 /= Void
			valid_a_x__midl_0008: a_x__midl_0008.item /= default_pointer
		do
			ccom_tag_typedesc_set_x__midl_0008 (item, a_x__midl_0008.item)
		end

	set_vt (a_vt: INTEGER) is
			-- Set `vt' with `a_vt'.
		do
			ccom_tag_typedesc_set_vt (item, a_vt)
		end

feature {NONE}  -- Externals

	c_size_of_tag_typedesc: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library_tagTYPEDESC_s.h%"]"
		alias
			"sizeof(ecom_control_library::tagTYPEDESC)"
		end

	ccom_tag_typedesc_x__midl_0008 (a_pointer: POINTER): X__MIDL_IOLE_AUTOMATION_TYPES_0005_UNION is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagTYPEDESC_s_impl.h%"](ecom_control_library::tagTYPEDESC *):EIF_REFERENCE"
		end

	ccom_tag_typedesc_set_x__midl_0008 (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagTYPEDESC_s_impl.h%"](ecom_control_library::tagTYPEDESC *, ecom_control_library::__MIDL_IOleAutomationTypes_0005 *)"
		end

	ccom_tag_typedesc_vt (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagTYPEDESC_s_impl.h%"](ecom_control_library::tagTYPEDESC *):EIF_INTEGER"
		end

	ccom_tag_typedesc_set_vt (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagTYPEDESC_s_impl.h%"](ecom_control_library::tagTYPEDESC *, USHORT)"
		end

end -- TAG_TYPEDESC_RECORD

