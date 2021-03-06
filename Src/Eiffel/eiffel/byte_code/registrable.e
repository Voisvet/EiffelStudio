﻿note
	description: "[
		Records common properties of Eiffel sub-expressions, which can
		be put in temporary registers (expression spliting).
	]"
	legal: "See notice at end of class."
	status: "See notice at end of class."

deferred class REGISTRABLE

feature

	register: REGISTRABLE
			-- Where expression is stored.
		do
		end;

	set_register (r: REGISTRABLE)
			-- Set current register to `r'
		do
		end;

	c_type: TYPE_C
			-- Associated C type
		deferred
		end;

	register_name: STRING
			-- The ASCII representation of the register
		deferred
		end;

	context: BYTE_CONTEXT
			-- Context in which generation occurs
		deferred
		end;

	get_register
			-- Ask for a new register.
		do
		end;

	free_register
			-- Free register for use by others.
		do
		end;

	print_register
			-- Generates the C representation of `register'
		do
			context.buffer.put_string (register_name)
		end

	print_target_register
			-- Generates the C representation of `register'
			-- without any checks in workbench mode and
			-- with a check that it is not void and
			-- can be used as a target of a call
			-- in finalized mode.
		do
			if context.workbench_mode then
					-- The register is known to be non-void.
				print_register
			else
					-- Add a check that a target is not void.
				print_checked_target_register
			end
		end

	print_checked_target_register
			-- Generates the C representation of `register'
			-- with a check that it is not void and
			-- can be used as a target of a call.
		local
			buf: like {BYTE_CONTEXT}.buffer
		do
			buf := context.buffer
				-- Add a check that a target is not void.
				-- General case.
			buf.put_string ({C_CONST}.rtcv_open)
			print_register
			buf.put_character (')')
		end

	propagate (r: REGISTRABLE)
			-- Propagates the target of assignment `r' to avoid
			-- an extra temporary variable.
		do
		end;

	is_result: BOOLEAN
			-- Is register the Result entity ?
		do
		end;

	is_inlined_result: BOOLEAN
			-- Is register the inlined Result entity ?
		do
		end;

	is_current: BOOLEAN
			-- Is register the Current entity ?
		do
		end;

	is_inlined_current: BOOLEAN
			-- Is register the inlined Current entity ?
		do
		end;

	is_argument: BOOLEAN
			-- Is register an argument entity ?
		do
		end;

	is_predefined: BOOLEAN
			-- Is Current a predefined entity ?
		do
			Result := is_local or else is_argument or else is_result or else is_current;
		end;

	has_side_effect: BOOLEAN
			-- Does Current have a side affect as a result of evaluation?
		do
				-- To be on the safe side consider an evalution as having a side effect.
			Result := True
		end

	is_local: BOOLEAN
			-- Is register a local entity ?
		do
		end;

	is_temporary: BOOLEAN
			-- Is register a temporary one ?
		do
		end;

	No_register: VOID_REGISTER
			-- Special entity for no register
		once
			create Result;
		end;

note
	copyright:	"Copyright (c) 1984-2016, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
