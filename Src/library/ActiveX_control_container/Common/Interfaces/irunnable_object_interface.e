indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IRUNNABLE_OBJECT_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	get_running_class_user_precondition (lp_clsid: ECOM_GUID): BOOLEAN is
			-- User-defined preconditions for `get_running_class'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	run_user_precondition (pbc: IBIND_CTX_INTERFACE): BOOLEAN is
			-- User-defined preconditions for `run'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_is_running_user_precondition: BOOLEAN is
			-- User-defined preconditions for `remote_is_running'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	lock_running_user_precondition (f_lock: INTEGER; f_last_unlock_closes: INTEGER): BOOLEAN is
			-- User-defined preconditions for `lock_running'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_contained_object_user_precondition (f_contained: INTEGER): BOOLEAN is
			-- User-defined preconditions for `set_contained_object'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	get_running_class (lp_clsid: ECOM_GUID) is
			-- No description available.
			-- `lp_clsid' [out].  
		require
			non_void_lp_clsid: lp_clsid /= Void
			valid_lp_clsid: lp_clsid.item /= default_pointer
			get_running_class_user_precondition: get_running_class_user_precondition (lp_clsid)
		deferred

		end

	run (pbc: IBIND_CTX_INTERFACE) is
			-- No description available.
			-- `pbc' [in].  
		require
			run_user_precondition: run_user_precondition (pbc)
		deferred

		end

	remote_is_running is
			-- No description available.
		require
			remote_is_running_user_precondition: remote_is_running_user_precondition
		deferred

		end

	lock_running (f_lock: INTEGER; f_last_unlock_closes: INTEGER) is
			-- No description available.
			-- `f_lock' [in].  
			-- `f_last_unlock_closes' [in].  
		require
			lock_running_user_precondition: lock_running_user_precondition (f_lock, f_last_unlock_closes)
		deferred

		end

	set_contained_object (f_contained: INTEGER) is
			-- No description available.
			-- `f_contained' [in].  
		require
			set_contained_object_user_precondition: set_contained_object_user_precondition (f_contained)
		deferred

		end

end -- IRUNNABLE_OBJECT_INTERFACE

