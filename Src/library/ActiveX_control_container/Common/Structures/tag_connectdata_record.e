indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	TAG_CONNECTDATA_RECORD

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

	punk: ECOM_INTERFACE is
			-- No description available.
		do
			Result := ccom_tag_connectdata_punk (item)
		end

	dw_cookie: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_connectdata_dw_cookie (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_tag_connectdata
		end

feature -- Basic Operations

	set_punk (a_punk: ECOM_INTERFACE) is
			-- Set `punk' with `a_punk'.
		do
			ccom_tag_connectdata_set_punk (item, a_punk.item)
		end

	set_dw_cookie (a_dw_cookie: INTEGER) is
			-- Set `dw_cookie' with `a_dw_cookie'.
		do
			ccom_tag_connectdata_set_dw_cookie (item, a_dw_cookie)
		end

feature {NONE}  -- Externals

	c_size_of_tag_connectdata: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library_tagCONNECTDATA_s.h%"]"
		alias
			"sizeof(ecom_control_library::tagCONNECTDATA)"
		end

	ccom_tag_connectdata_punk (a_pointer: POINTER): ECOM_INTERFACE is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagCONNECTDATA_s_impl.h%"](ecom_control_library::tagCONNECTDATA *):EIF_REFERENCE"
		end

	ccom_tag_connectdata_set_punk (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagCONNECTDATA_s_impl.h%"](ecom_control_library::tagCONNECTDATA *, IUnknown *)"
		end

	ccom_tag_connectdata_dw_cookie (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagCONNECTDATA_s_impl.h%"](ecom_control_library::tagCONNECTDATA *):EIF_INTEGER"
		end

	ccom_tag_connectdata_set_dw_cookie (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagCONNECTDATA_s_impl.h%"](ecom_control_library::tagCONNECTDATA *, ULONG)"
		end

end -- TAG_CONNECTDATA_RECORD

