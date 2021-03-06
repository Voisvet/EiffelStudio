note
	description: "Character description."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	CHAR_DESC

inherit
	ATTR_DESC

create
	make

feature -- Initialization

	make (w: BOOLEAN)
			-- Create instance of CHAR_DESC. If `w' a normal character.
			-- Otherwise a wide character.
		do
			if w then
				internal_flags := {SHARED_LEVEL}.wide_char_level
			else
				internal_flags := {SHARED_LEVEL}.character_level
			end
		ensure
			is_wide_set: is_wide = w
		end

feature -- Access

	is_wide: BOOLEAN
			-- Is current character a wide one?
		do
			Result := level = {SHARED_LEVEL}.wide_char_level
		end

	sk_value: NATURAL_32
		do
			if level = {SHARED_LEVEL}.wide_char_level then
				Result := {SK_CONST}.sk_char32
			else
				Result := {SK_CONST}.sk_char8
			end
		end

	type_i: TYPE_A
			-- Corresponding TYPE_I instance.
		do
			if level = {SHARED_LEVEL}.wide_char_level then
				Result := wide_char_type
			else
				Result := character_type
			end
		end

feature -- Code generation

	generate_code (buffer: GENERATION_BUFFER)
			-- Generate type code for current attribute description in
			-- `buffer'.
		do
			if level = {SHARED_LEVEL}.wide_char_level then
				buffer.put_string ({SK_CONST}.sk_char32_string)
			else
				buffer.put_string ({SK_CONST}.sk_char8_string)
			end
		end

note
	copyright:	"Copyright (c) 1984-2014, Eiffel Software"
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
