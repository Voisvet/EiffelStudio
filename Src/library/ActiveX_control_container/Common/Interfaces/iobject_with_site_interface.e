indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOBJECT_WITH_SITE_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	set_site_user_precondition (p_unk_site: ECOM_INTERFACE): BOOLEAN is
			-- User-defined preconditions for `set_site'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_site_user_precondition (riid: ECOM_GUID; ppv_site: CELL [POINTER]): BOOLEAN is
			-- User-defined preconditions for `get_site'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	set_site (p_unk_site: ECOM_INTERFACE) is
			-- No description available.
			-- `p_unk_site' [in].  
		require
			set_site_user_precondition: set_site_user_precondition (p_unk_site)
		deferred

		end

	get_site (riid: ECOM_GUID; ppv_site: CELL [POINTER]) is
			-- No description available.
			-- `riid' [in].  
			-- `ppv_site' [out].  
		require
			non_void_riid: riid /= Void
			valid_riid: riid.item /= default_pointer
			non_void_ppv_site: ppv_site /= Void
			get_site_user_precondition: get_site_user_precondition (riid, ppv_site)
		deferred

		ensure
			valid_ppv_site: ppv_site.item /= Void
		end

end -- IOBJECT_WITH_SITE_INTERFACE

