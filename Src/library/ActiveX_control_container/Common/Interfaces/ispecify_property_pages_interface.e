indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	ISPECIFY_PROPERTY_PAGES_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	get_pages_user_precondition (p_pages: TAG_CAUUID_RECORD): BOOLEAN is
			-- User-defined preconditions for `get_pages'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	get_pages (p_pages: TAG_CAUUID_RECORD) is
			-- No description available.
			-- `p_pages' [out].  
		require
			non_void_p_pages: p_pages /= Void
			valid_p_pages: p_pages.item /= default_pointer
			get_pages_user_precondition: get_pages_user_precondition (p_pages)
		deferred

		end

end -- ISPECIFY_PROPERTY_PAGES_INTERFACE

