note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IOLE_IN_PLACE_SITE_EX_INTERFACE

inherit
	IOLE_IN_PLACE_SITE_INTERFACE

feature -- Access
	
	Activate_windowless: INTEGER = 1
			-- Indicates whether an object is activated as a
			-- windowless object. 
			
feature -- Status Report

	on_in_place_activate_ex_user_precondition (pf_no_redraw: INTEGER_REF; dw_flags: INTEGER): BOOLEAN
			-- User-defined preconditions for `on_in_place_activate_ex'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	on_in_place_deactivate_ex_user_precondition (f_no_redraw: INTEGER): BOOLEAN
			-- User-defined preconditions for `on_in_place_deactivate_ex'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	request_uiactivate_user_precondition: BOOLEAN
			-- User-defined preconditions for `request_uiactivate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	on_in_place_activate_ex (pf_no_redraw: INTEGER_REF; dw_flags: INTEGER)
			-- No description available.
			-- `pf_no_redraw' [out].  
			-- `dw_flags' [in].  
		require
			non_void_pf_no_redraw: pf_no_redraw /= Void
			on_in_place_activate_ex_user_precondition: on_in_place_activate_ex_user_precondition (pf_no_redraw, dw_flags)
		deferred

		end

	on_in_place_deactivate_ex (f_no_redraw: INTEGER)
			-- No description available.
			-- `f_no_redraw' [in].  
		require
			on_in_place_deactivate_ex_user_precondition: on_in_place_deactivate_ex_user_precondition (f_no_redraw)
		deferred

		end

	request_uiactivate
			-- No description available.
		require
			request_uiactivate_user_precondition: request_uiactivate_user_precondition
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




end -- IOLE_IN_PLACE_SITE_EX_INTERFACE

