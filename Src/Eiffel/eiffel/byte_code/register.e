﻿note
	desription: "A temporary register to hold the result of an expression."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class REGISTER

inherit

	REGISTRABLE
		redefine
			free_register,
			get_register,
			is_predefined,
			is_temporary,
			print_checked_target_register,
			print_register
		end

	SHARED_BYTE_CONTEXT

	SHARED_C_LEVEL

	SHARED_TYPE_I

create

	make,
	make_with_level

feature

	regnum: INTEGER
			-- Which register is it ?

	c_type: TYPE_C
			-- C type of the register
		do
			Result := context.register_type (level)
		end

	make (ctype: TYPE_C)
			-- Create a register of C type `ctype'.
		require
			valid_type: ctype /= Void
			non_void_type: ctype.level /= C_void
		do
			level := ctype.level
			get_register
		end

	make_with_level (t: INTEGER)
			-- Create a register of C type identified by`t'.
		do
			level := t
			get_register
		end

	get_register
			-- Get a register for C type `c_type'
		do
			regnum := context.register_server.get_register (level)
			if c_type.is_reference then
				context.set_local_index (register_name, Current)
			end
		ensure then
			valid_register: regnum /= 0
		end

	free_register
			-- Free register used by the expression
		require else
			register_exists: regnum /= 0
		do
			context.register_server.free_register (level, regnum)
		end

	print_register
			-- Generates the C representation of `register'
		local
			ctx: BYTE_CONTEXT
		do
			ctx := context
			ctx.put_register_name (level, regnum, ctx.buffer)
		end

	register_name: STRING
			-- ASCII representation of register
		do
			Result := context.register_name (level, regnum)
		end;

	is_temporary: BOOLEAN = True
			-- Register is a temporary one.

	is_predefined: BOOLEAN = True
			-- It is a predefined register, since it stores temporarly
			-- object.

feature {REGISTRABLE} -- C code generation

	print_checked_target_register
			-- <Precursor>
		local
			ctx: BYTE_CONTEXT
			buf: like {BYTE_CONTEXT}.buffer
		do
			ctx := context
			buf := ctx.buffer
			buf.put_string ({C_CONST}.rtcw_open)
			ctx.put_register_name (level, regnum, buf)
			buf.put_character (')')
		end

feature {BYTE_CONTEXT} -- Implementation

	level: INTEGER
			-- Internal level of the associated C type

invariant

	not_void_type: c_type.level /= C_void
	valid_c_type: c_type.level >= 1 and c_type.level <= c_nb_types

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
