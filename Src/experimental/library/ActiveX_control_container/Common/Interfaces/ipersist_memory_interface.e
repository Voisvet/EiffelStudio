note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IPERSIST_MEMORY_INTERFACE

inherit
	IPERSIST_INTERFACE

feature -- Status Report

	is_dirty_user_precondition: BOOLEAN
			-- User-defined preconditions for `is_dirty'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	load_user_precondition (p_mem: CHARACTER_REF; cb_size: INTEGER): BOOLEAN
			-- User-defined preconditions for `load'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	save_user_precondition (p_mem: CHARACTER_REF; f_clear_dirty: INTEGER; cb_size: INTEGER): BOOLEAN
			-- User-defined preconditions for `save'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	get_size_max_user_precondition (pcb_size: INTEGER_REF): BOOLEAN
			-- User-defined preconditions for `get_size_max'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	init_new_user_precondition: BOOLEAN
			-- User-defined preconditions for `init_new'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	is_dirty
			-- No description available.
		require
			is_dirty_user_precondition: is_dirty_user_precondition
		deferred

		end

	load (p_mem: CHARACTER_REF; cb_size: INTEGER)
			-- No description available.
			-- `p_mem' [in].  
			-- `cb_size' [in].  
		require
			non_void_p_mem: p_mem /= Void
			load_user_precondition: load_user_precondition (p_mem, cb_size)
		deferred

		end

	save (p_mem: CHARACTER_REF; f_clear_dirty: INTEGER; cb_size: INTEGER)
			-- No description available.
			-- `p_mem' [out].  
			-- `f_clear_dirty' [in].  
			-- `cb_size' [in].  
		require
			non_void_p_mem: p_mem /= Void
			save_user_precondition: save_user_precondition (p_mem, f_clear_dirty, cb_size)
		deferred

		end

	get_size_max (pcb_size: INTEGER_REF)
			-- No description available.
			-- `pcb_size' [out].  
		require
			non_void_pcb_size: pcb_size /= Void
			get_size_max_user_precondition: get_size_max_user_precondition (pcb_size)
		deferred

		end

	init_new
			-- No description available.
		require
			init_new_user_precondition: init_new_user_precondition
		deferred

		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- IPERSIST_MEMORY_INTERFACE

