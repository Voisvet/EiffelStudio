indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IPERSIST_FILE_2_INTERFACE

inherit
	IPERSIST_INTERFACE

feature -- Status Report

	is_dirty_user_precondition: BOOLEAN is
			-- User-defined preconditions for `is_dirty'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	load_user_precondition (psz_file_name: STRING; dw_mode: INTEGER): BOOLEAN is
			-- User-defined preconditions for `load'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	save_user_precondition (psz_file_name: STRING; f_remember: INTEGER): BOOLEAN is
			-- User-defined preconditions for `save'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	save_completed_user_precondition (psz_file_name: STRING): BOOLEAN is
			-- User-defined preconditions for `save_completed'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_cur_file_user_precondition (ppsz_file_name: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `get_cur_file'.
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

	load (psz_file_name: STRING; dw_mode: INTEGER) is
			-- No description available.
			-- `psz_file_name' [in].  
			-- `dw_mode' [in].  
		require
			load_user_precondition: load_user_precondition (psz_file_name, dw_mode)
		deferred

		end

	save (psz_file_name: STRING; f_remember: INTEGER) is
			-- No description available.
			-- `psz_file_name' [in].  
			-- `f_remember' [in].  
		require
			save_user_precondition: save_user_precondition (psz_file_name, f_remember)
		deferred

		end

	save_completed (psz_file_name: STRING) is
			-- No description available.
			-- `psz_file_name' [in].  
		require
			save_completed_user_precondition: save_completed_user_precondition (psz_file_name)
		deferred

		end

	get_cur_file (ppsz_file_name: CELL [STRING]) is
			-- No description available.
			-- `ppsz_file_name' [out].  
		require
			non_void_ppsz_file_name: ppsz_file_name /= Void
			get_cur_file_user_precondition: get_cur_file_user_precondition (ppsz_file_name)
		deferred

		ensure
			valid_ppsz_file_name: ppsz_file_name.item /= Void
		end

end -- IPERSIST_FILE_2_INTERFACE

