indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOLE_UNDO_UNIT_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	do1_user_precondition (p_undo_manager: IOLE_UNDO_MANAGER_INTERFACE): BOOLEAN is
			-- User-defined preconditions for `do1'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_description_user_precondition (p_bstr: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `get_description'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_unit_type_user_precondition (p_clsid: ECOM_GUID; pl_id: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `get_unit_type'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	on_next_add_user_precondition: BOOLEAN is
			-- User-defined preconditions for `on_next_add'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	do1 (p_undo_manager: IOLE_UNDO_MANAGER_INTERFACE) is
			-- No description available.
			-- `p_undo_manager' [in].  
		require
			do1_user_precondition: do1_user_precondition (p_undo_manager)
		deferred

		end

	get_description (p_bstr: CELL [STRING]) is
			-- No description available.
			-- `p_bstr' [out].  
		require
			non_void_p_bstr: p_bstr /= Void
			get_description_user_precondition: get_description_user_precondition (p_bstr)
		deferred

		ensure
			valid_p_bstr: p_bstr.item /= Void
		end

	get_unit_type (p_clsid: ECOM_GUID; pl_id: INTEGER_REF) is
			-- No description available.
			-- `p_clsid' [out].  
			-- `pl_id' [out].  
		require
			non_void_p_clsid: p_clsid /= Void
			valid_p_clsid: p_clsid.item /= default_pointer
			non_void_pl_id: pl_id /= Void
			get_unit_type_user_precondition: get_unit_type_user_precondition (p_clsid, pl_id)
		deferred

		end

	on_next_add is
			-- No description available.
		require
			on_next_add_user_precondition: on_next_add_user_precondition
		deferred

		end

end -- IOLE_UNDO_UNIT_INTERFACE

