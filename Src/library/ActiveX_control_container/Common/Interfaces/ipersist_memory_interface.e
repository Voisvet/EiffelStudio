indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IPERSIST_MEMORY_INTERFACE

inherit
	IPERSIST_INTERFACE

feature -- Status Report

	is_dirty_user_precondition: BOOLEAN is
			-- User-defined preconditions for `is_dirty'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_load_user_precondition (p_mem: CHARACTER_REF; cb_size: INTEGER): BOOLEAN is
			-- User-defined preconditions for `remote_load'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remote_save_user_precondition (p_mem: CHARACTER_REF; f_clear_dirty: INTEGER; cb_size: INTEGER): BOOLEAN is
			-- User-defined preconditions for `remote_save'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_size_max_user_precondition (pcb_size: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `get_size_max'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	init_new_user_precondition: BOOLEAN is
			-- User-defined preconditions for `init_new'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	is_dirty is
			-- No description available.
		require
			is_dirty_user_precondition: is_dirty_user_precondition
		deferred

		end

	remote_load (p_mem: CHARACTER_REF; cb_size: INTEGER) is
			-- No description available.
			-- `p_mem' [in].  
			-- `cb_size' [in].  
		require
			non_void_p_mem: p_mem /= Void
			remote_load_user_precondition: remote_load_user_precondition (p_mem, cb_size)
		deferred

		end

	remote_save (p_mem: CHARACTER_REF; f_clear_dirty: INTEGER; cb_size: INTEGER) is
			-- No description available.
			-- `p_mem' [out].  
			-- `f_clear_dirty' [in].  
			-- `cb_size' [in].  
		require
			non_void_p_mem: p_mem /= Void
			remote_save_user_precondition: remote_save_user_precondition (p_mem, f_clear_dirty, cb_size)
		deferred

		end

	get_size_max (pcb_size: INTEGER_REF) is
			-- No description available.
			-- `pcb_size' [out].  
		require
			non_void_pcb_size: pcb_size /= Void
			get_size_max_user_precondition: get_size_max_user_precondition (pcb_size)
		deferred

		end

	init_new is
			-- No description available.
		require
			init_new_user_precondition: init_new_user_precondition
		deferred

		end

end -- IPERSIST_MEMORY_INTERFACE

