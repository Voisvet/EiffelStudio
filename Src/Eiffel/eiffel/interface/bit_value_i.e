note
	description: "Representation of a manifest BIT value"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class BIT_VALUE_I

inherit
	VALUE_I
		redefine
			is_bit,
			set_real_type
		end

	SHARED_BN_STATELESS_VISITOR
		export
			{NONE} all
		end

create
	make

feature {NONE} -- Initialization

	make (v: STRING)
			-- Create new instance from string representation `v'.
		require
			v_not_void: v /= Void
			v_not_empty: not v.is_empty
		do
			bit_value := v
			bit_count := v.count.as_natural_32
		ensure
			bit_value_set: bit_value = v
			bit_coutn_set: bit_count = v.count.as_natural_32
		end

feature -- Comparison

	is_equivalent (other: like Current): BOOLEAN
			-- Is `other' equivalent to current object ?
		do
			Result := bit_count = other.bit_count and then
				bit_value.is_equal (other.bit_value)
		end

feature -- Access

	bit_value: STRING
			-- Integer constant value

	bit_count: NATURAL_32
			-- real number of bits

feature -- Status Report

	is_bit: BOOLEAN = True
			-- Is current constant a bit one?

	valid_type (t: TYPE_A): BOOLEAN
			-- Is current value compatible with `t' ?
		local
			class_type: BITS_A
		do
			class_type ?= t
			Result := class_type /= Void and then bit_count <= class_type.bit_count
		end

feature -- Settings

	set_real_type (t: TYPE_A)
			-- Set real number of bits.
		local
			class_type: BITS_A
		do
			class_type ?= t
			if class_type /= Void then
				bit_count := class_type.bit_count
			end
		end

feature -- Code generation

	generate (buffer: GENERATION_BUFFER)
			-- Generate value in `buffer'.
		do
			buffer.put_string ("RTMB(")
			buffer.put_string_literal (bit_value)
			buffer.put_string (", ")
			buffer.put_natural_32 (bit_count)
			buffer.put_character (')')
		end

	generate_il
			-- Generate IL code for BIT constant value.
		do
			cil_node_generator.generate_il_node (il_generator, create {BIT_CONST_B}.make (bit_value))
		end

	make_byte_code (ba: BYTE_ARRAY)
			-- Generate byte code for a BIT constant value.
		do
			ba.append (Bc_bit)
			ba.append_natural_32 (bit_count)
			ba.append_bit (bit_value)
		end

	dump: STRING
		do
			Result := bit_value
		end

invariant
	bit_count_non_negative: bit_count > 0

note
	copyright:	"Copyright (c) 1984-2010, Eiffel Software"
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
