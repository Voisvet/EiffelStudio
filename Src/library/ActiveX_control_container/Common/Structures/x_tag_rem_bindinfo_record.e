indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	X_TAG_REM_BINDINFO_RECORD

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

	cb_size: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_cb_size (item)
		end

	sz_extra_info: STRING is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_sz_extra_info (item)
		end

	grf_bind_info_f: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_grf_bind_info_f (item)
		end

	dw_bind_verb: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_dw_bind_verb (item)
		end

	sz_custom_verb: STRING is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_sz_custom_verb (item)
		end

	cbstgmed_data: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_cbstgmed_data (item)
		end

	dw_options: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_dw_options (item)
		end

	dw_options_flags: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_dw_options_flags (item)
		end

	dw_code_page: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_dw_code_page (item)
		end

	security_attributes: X_REMSECURITY_ATTRIBUTES_RECORD is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_security_attributes (item)
		ensure
			valid_security_attributes: Result.item /= default_pointer
		end

	iid: ECOM_GUID is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_iid (item)
		ensure
			valid_iid: Result.item /= default_pointer
		end

	punk: ECOM_INTERFACE is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_punk (item)
		end

	dw_reserved: INTEGER is
			-- No description available.
		do
			Result := ccom_x_tag_rem_bindinfo_dw_reserved (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_x_tag_rem_bindinfo
		end

feature -- Basic Operations

	set_cb_size (a_cb_size: INTEGER) is
			-- Set `cb_size' with `a_cb_size'.
		do
			ccom_x_tag_rem_bindinfo_set_cb_size (item, a_cb_size)
		end

	set_sz_extra_info (a_sz_extra_info: STRING) is
			-- Set `sz_extra_info' with `a_sz_extra_info'.
		do
			ccom_x_tag_rem_bindinfo_set_sz_extra_info (item, a_sz_extra_info)
		end

	set_grf_bind_info_f (a_grf_bind_info_f: INTEGER) is
			-- Set `grf_bind_info_f' with `a_grf_bind_info_f'.
		do
			ccom_x_tag_rem_bindinfo_set_grf_bind_info_f (item, a_grf_bind_info_f)
		end

	set_dw_bind_verb (a_dw_bind_verb: INTEGER) is
			-- Set `dw_bind_verb' with `a_dw_bind_verb'.
		do
			ccom_x_tag_rem_bindinfo_set_dw_bind_verb (item, a_dw_bind_verb)
		end

	set_sz_custom_verb (a_sz_custom_verb: STRING) is
			-- Set `sz_custom_verb' with `a_sz_custom_verb'.
		do
			ccom_x_tag_rem_bindinfo_set_sz_custom_verb (item, a_sz_custom_verb)
		end

	set_cbstgmed_data (a_cbstgmed_data: INTEGER) is
			-- Set `cbstgmed_data' with `a_cbstgmed_data'.
		do
			ccom_x_tag_rem_bindinfo_set_cbstgmed_data (item, a_cbstgmed_data)
		end

	set_dw_options (a_dw_options: INTEGER) is
			-- Set `dw_options' with `a_dw_options'.
		do
			ccom_x_tag_rem_bindinfo_set_dw_options (item, a_dw_options)
		end

	set_dw_options_flags (a_dw_options_flags: INTEGER) is
			-- Set `dw_options_flags' with `a_dw_options_flags'.
		do
			ccom_x_tag_rem_bindinfo_set_dw_options_flags (item, a_dw_options_flags)
		end

	set_dw_code_page (a_dw_code_page: INTEGER) is
			-- Set `dw_code_page' with `a_dw_code_page'.
		do
			ccom_x_tag_rem_bindinfo_set_dw_code_page (item, a_dw_code_page)
		end

	set_security_attributes (a_security_attributes: X_REMSECURITY_ATTRIBUTES_RECORD) is
			-- Set `security_attributes' with `a_security_attributes'.
		require
			non_void_a_security_attributes: a_security_attributes /= Void
			valid_a_security_attributes: a_security_attributes.item /= default_pointer
		do
			ccom_x_tag_rem_bindinfo_set_security_attributes (item, a_security_attributes.item)
		end

	set_iid (a_iid: ECOM_GUID) is
			-- Set `iid' with `a_iid'.
		require
			non_void_a_iid: a_iid /= Void
			valid_a_iid: a_iid.item /= default_pointer
		do
			ccom_x_tag_rem_bindinfo_set_iid (item, a_iid.item)
		end

	set_punk (a_punk: ECOM_INTERFACE) is
			-- Set `punk' with `a_punk'.
		do
			ccom_x_tag_rem_bindinfo_set_punk (item, a_punk.item)
		end

	set_dw_reserved (a_dw_reserved: INTEGER) is
			-- Set `dw_reserved' with `a_dw_reserved'.
		do
			ccom_x_tag_rem_bindinfo_set_dw_reserved (item, a_dw_reserved)
		end

feature {NONE}  -- Externals

	c_size_of_x_tag_rem_bindinfo: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library__tagRemBINDINFO_s.h%"]"
		alias
			"sizeof(ecom_control_library::_tagRemBINDINFO)"
		end

	ccom_x_tag_rem_bindinfo_cb_size (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_cb_size (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_sz_extra_info (a_pointer: POINTER): STRING is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_REFERENCE"
		end

	ccom_x_tag_rem_bindinfo_set_sz_extra_info (a_pointer: POINTER; arg2: STRING) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, EIF_OBJECT)"
		end

	ccom_x_tag_rem_bindinfo_grf_bind_info_f (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_grf_bind_info_f (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_dw_bind_verb (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_dw_bind_verb (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_sz_custom_verb (a_pointer: POINTER): STRING is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_REFERENCE"
		end

	ccom_x_tag_rem_bindinfo_set_sz_custom_verb (a_pointer: POINTER; arg2: STRING) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, EIF_OBJECT)"
		end

	ccom_x_tag_rem_bindinfo_cbstgmed_data (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_cbstgmed_data (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_dw_options (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_dw_options (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_dw_options_flags (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_dw_options_flags (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_dw_code_page (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_dw_code_page (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

	ccom_x_tag_rem_bindinfo_security_attributes (a_pointer: POINTER): X_REMSECURITY_ATTRIBUTES_RECORD is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_REFERENCE"
		end

	ccom_x_tag_rem_bindinfo_set_security_attributes (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ecom_control_library::_REMSECURITY_ATTRIBUTES *)"
		end

	ccom_x_tag_rem_bindinfo_iid (a_pointer: POINTER): ECOM_GUID is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_REFERENCE"
		end

	ccom_x_tag_rem_bindinfo_set_iid (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, GUID *)"
		end

	ccom_x_tag_rem_bindinfo_punk (a_pointer: POINTER): ECOM_INTERFACE is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_REFERENCE"
		end

	ccom_x_tag_rem_bindinfo_set_punk (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, IUnknown *)"
		end

	ccom_x_tag_rem_bindinfo_dw_reserved (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *):EIF_INTEGER"
		end

	ccom_x_tag_rem_bindinfo_set_dw_reserved (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__tagRemBINDINFO_s_impl.h%"](ecom_control_library::_tagRemBINDINFO *, ULONG)"
		end

end -- X_TAG_REM_BINDINFO_RECORD

