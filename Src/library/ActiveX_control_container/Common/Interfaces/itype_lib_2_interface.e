indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	ITYPE_LIB_2_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	remote_get_type_info_count_user_precondition (pc_tinfo: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `remote_get_type_info_count'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_type_info_user_precondition (a_index: INTEGER; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]): BOOLEAN is
			-- User-defined preconditions for `get_type_info'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_type_info_type_user_precondition (a_index: INTEGER; p_tkind: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `get_type_info_type'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_type_info_of_guid_user_precondition (guid: ECOM_GUID; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]): BOOLEAN is
			-- User-defined preconditions for `get_type_info_of_guid'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_get_lib_attr_user_precondition (pp_tlib_attr: CELL [TAG_TLIBATTR_RECORD]; p_dummy: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `remote_get_lib_attr'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_type_comp_user_precondition (pp_tcomp: CELL [ITYPE_COMP_INTERFACE]): BOOLEAN is
			-- User-defined preconditions for `get_type_comp'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_get_documentation_user_precondition (a_index: INTEGER; ref_ptr_flags: INTEGER; p_bstr_name: CELL [STRING]; p_bstr_doc_string: CELL [STRING]; pdw_help_context: INTEGER_REF; p_bstr_help_file: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `remote_get_documentation'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_is_name_user_precondition (sz_name_buf: STRING; l_hash_val: INTEGER; pf_name: INTEGER_REF; p_bstr_lib_name: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `remote_is_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_find_name_user_precondition (sz_name_buf: STRING; l_hash_val: INTEGER; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]; rg_mem_id: INTEGER_REF; pc_found: INTEGER_REF; p_bstr_lib_name: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `remote_find_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	local_release_tlib_attr_user_precondition: BOOLEAN is
			-- User-defined preconditions for `local_release_tlib_attr'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	remote_get_type_info_count (pc_tinfo: INTEGER_REF) is
			-- No description available.
			-- `pc_tinfo' [out].  
		require
			non_void_pc_tinfo: pc_tinfo /= Void
			remote_get_type_info_count_user_precondition: remote_get_type_info_count_user_precondition (pc_tinfo)
		deferred

		end

	get_type_info (a_index: INTEGER; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]) is
			-- No description available.
			-- `a_index' [in].  
			-- `pp_tinfo' [out].  
		require
			non_void_pp_tinfo: pp_tinfo /= Void
			get_type_info_user_precondition: get_type_info_user_precondition (a_index, pp_tinfo)
		deferred

		ensure
			valid_pp_tinfo: pp_tinfo.item /= Void
		end

	get_type_info_type (a_index: INTEGER; p_tkind: INTEGER_REF) is
			-- No description available.
			-- `a_index' [in].  
			-- `p_tkind' [out].  
		require
			non_void_p_tkind: p_tkind /= Void
			get_type_info_type_user_precondition: get_type_info_type_user_precondition (a_index, p_tkind)
		deferred

		end

	get_type_info_of_guid (guid: ECOM_GUID; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]) is
			-- No description available.
			-- `guid' [in].  
			-- `pp_tinfo' [out].  
		require
			non_void_guid: guid /= Void
			valid_guid: guid.item /= default_pointer
			non_void_pp_tinfo: pp_tinfo /= Void
			get_type_info_of_guid_user_precondition: get_type_info_of_guid_user_precondition (guid, pp_tinfo)
		deferred

		ensure
			valid_pp_tinfo: pp_tinfo.item /= Void
		end

	remote_get_lib_attr (pp_tlib_attr: CELL [TAG_TLIBATTR_RECORD]; p_dummy: INTEGER_REF) is
			-- No description available.
			-- `pp_tlib_attr' [out].  
			-- `p_dummy' [out].  
		require
			non_void_pp_tlib_attr: pp_tlib_attr /= Void
			non_void_p_dummy: p_dummy /= Void
			remote_get_lib_attr_user_precondition: remote_get_lib_attr_user_precondition (pp_tlib_attr, p_dummy)
		deferred

		ensure
			valid_pp_tlib_attr: pp_tlib_attr.item /= Void
		end

	get_type_comp (pp_tcomp: CELL [ITYPE_COMP_INTERFACE]) is
			-- No description available.
			-- `pp_tcomp' [out].  
		require
			non_void_pp_tcomp: pp_tcomp /= Void
			get_type_comp_user_precondition: get_type_comp_user_precondition (pp_tcomp)
		deferred

		ensure
			valid_pp_tcomp: pp_tcomp.item /= Void
		end

	remote_get_documentation (a_index: INTEGER; ref_ptr_flags: INTEGER; p_bstr_name: CELL [STRING]; p_bstr_doc_string: CELL [STRING]; pdw_help_context: INTEGER_REF; p_bstr_help_file: CELL [STRING]) is
			-- No description available.
			-- `a_index' [in].  
			-- `ref_ptr_flags' [in].  
			-- `p_bstr_name' [out].  
			-- `p_bstr_doc_string' [out].  
			-- `pdw_help_context' [out].  
			-- `p_bstr_help_file' [out].  
		require
			non_void_p_bstr_name: p_bstr_name /= Void
			non_void_p_bstr_doc_string: p_bstr_doc_string /= Void
			non_void_pdw_help_context: pdw_help_context /= Void
			non_void_p_bstr_help_file: p_bstr_help_file /= Void
			remote_get_documentation_user_precondition: remote_get_documentation_user_precondition (a_index, ref_ptr_flags, p_bstr_name, p_bstr_doc_string, pdw_help_context, p_bstr_help_file)
		deferred

		ensure
			valid_p_bstr_name: p_bstr_name.item /= Void
			valid_p_bstr_doc_string: p_bstr_doc_string.item /= Void
			valid_p_bstr_help_file: p_bstr_help_file.item /= Void
		end

	remote_is_name (sz_name_buf: STRING; l_hash_val: INTEGER; pf_name: INTEGER_REF; p_bstr_lib_name: CELL [STRING]) is
			-- No description available.
			-- `sz_name_buf' [in].  
			-- `l_hash_val' [in].  
			-- `pf_name' [out].  
			-- `p_bstr_lib_name' [out].  
		require
			non_void_pf_name: pf_name /= Void
			non_void_p_bstr_lib_name: p_bstr_lib_name /= Void
			remote_is_name_user_precondition: remote_is_name_user_precondition (sz_name_buf, l_hash_val, pf_name, p_bstr_lib_name)
		deferred

		ensure
			valid_p_bstr_lib_name: p_bstr_lib_name.item /= Void
		end

	remote_find_name (sz_name_buf: STRING; l_hash_val: INTEGER; pp_tinfo: CELL [ITYPE_INFO_2_INTERFACE]; rg_mem_id: INTEGER_REF; pc_found: INTEGER_REF; p_bstr_lib_name: CELL [STRING]) is
			-- No description available.
			-- `sz_name_buf' [in].  
			-- `l_hash_val' [in].  
			-- `pp_tinfo' [out].  
			-- `rg_mem_id' [out].  
			-- `pc_found' [in, out].  
			-- `p_bstr_lib_name' [out].  
		require
			non_void_pp_tinfo: pp_tinfo /= Void
			non_void_rg_mem_id: rg_mem_id /= Void
			non_void_pc_found: pc_found /= Void
			non_void_p_bstr_lib_name: p_bstr_lib_name /= Void
			remote_find_name_user_precondition: remote_find_name_user_precondition (sz_name_buf, l_hash_val, pp_tinfo, rg_mem_id, pc_found, p_bstr_lib_name)
		deferred

		ensure
			valid_pp_tinfo: pp_tinfo.item /= Void
			valid_p_bstr_lib_name: p_bstr_lib_name.item /= Void
		end

	local_release_tlib_attr is
			-- No description available.
		require
			local_release_tlib_attr_user_precondition: local_release_tlib_attr_user_precondition
		deferred

		end

end -- ITYPE_LIB_2_INTERFACE

