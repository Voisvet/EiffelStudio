indexing
	description: "Objects that represent encodings and that provide conversion methods."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	ENCODING

inherit
	ANY
		redefine
			is_equal
		end

create
	make

feature {NONE} -- Initialization

	make (a_code_page: STRING) is
			-- Set `code_page' with `a_code_page'
			-- `a_code_page' should be valid, either it is from CODE_PAGE_CONSTANTS
			-- or dynamically from i18n library.
			-- Other names of code page/character set are not guaranteed valid for all platforms,
			-- though they would work on certain platforms.
		require
			a_code_page_not_void: a_code_page /= Void
			a_code_page_not_empty: not a_code_page.is_empty
		do
			code_page := a_code_page
			encoding_i := regular_encoding_imp
		end

feature -- Access

	code_page: STRING
			-- Code page/Character set name.
			-- Immutable name.

	last_converted_stream: STRING_8 is
			-- Stream representation of last converted string.
			-- Note: Original string object could be returned directly.
		require
			last_conversion_successful: last_conversion_successful
		do
			Result := encoding_i.last_converted_stream
		ensure
			last_conversion_successful_implies_not_void: last_conversion_successful implies Result /= Void
		end

	last_converted_string: STRING_GENERAL is
			-- Last converted string.
			-- Note: Original string object could be returned directly.
		require
			last_conversion_successful: last_conversion_successful
		do
			Result := encoding_i.last_converted_string
		ensure
			last_conversion_successful_implies_not_void: last_conversion_successful implies Result /= Void
		end

feature -- Conversion

	convert_to (a_to_encoding: ENCODING; a_string: STRING_GENERAL) is
			-- Convert `a_string' from current encoding to `a_to_encoding'.
			-- If either current or `a_to_encoding' is not `is_valid', or an error occurs during conversion,
			-- `last_conversion_successful' is unset.
			-- Conversion result can be retrieved via `last_converted_string' or `last_converted_stream'.
		require
			a_to_encoding_not_void: a_to_encoding /= Void
			a_string_not_void: a_string /= Void
		local
			l_unicode_conversion: BOOLEAN
		do
			if
				unicode_conversion.is_code_page_valid (a_to_encoding.code_page) and then
				unicode_conversion.is_code_page_valid (code_page) and then
				unicode_conversion.is_code_page_convertable (code_page, a_to_encoding.code_page)
			then
				encoding_i := unicode_conversion
				l_unicode_conversion := True
			else
				encoding_i := regular_encoding_imp
			end

			encoding_i.reset
			if l_unicode_conversion then
				encoding_i.convert_to (code_page, a_string, a_to_encoding.code_page)
			elseif a_to_encoding.is_valid and then is_valid and then is_conversion_possible (a_to_encoding) then
				encoding_i.convert_to (code_page, a_string, a_to_encoding.code_page)
			end
		end

feature -- Status report

	last_conversion_successful: BOOLEAN is
			-- Is last conversion successful?
		do
			Result := encoding_i.last_conversion_successful
		end

feature -- Comparison

	is_equal (other: like Current): BOOLEAN is
			-- Is `other' attached to an object considered
			-- equal to current object?
			-- |FIXME: Different names can indicate the same encoding.
		do
			Result := code_page.is_case_insensitive_equal (other.code_page)
		end

feature {ENCODING} -- Status report

	is_valid: BOOLEAN is
			-- Is current valid?
		do
			Result := encoding_i.is_code_page_valid (code_page)
		end

	is_conversion_possible (a_to_encoding: ENCODING): BOOLEAN is
			-- Is conversion possible?
		require
			a_to_encoding_not_void: a_to_encoding /= Void
			a_to_encoding_valid: a_to_encoding.is_valid
			is_valid: is_valid
		do
			Result := encoding_i.is_code_page_convertable (code_page, a_to_encoding.code_page)
		end

feature {NONE} -- Implementation

	encoding_i: ENCODING_I
			-- Current encoding implementation

	unicode_conversion: UNICODE_CONVERSION is
			-- Unicode conversion
		once
			create Result
		end

	regular_encoding_imp: ENCODING_I is
			-- Regular encoding implementation (Distinguished from Unicode conversion)
		once
			create {ENCODING_IMP}Result
		end

invariant
	code_page_not_void: code_page /= Void
	encoding_i_not_void: encoding_i /= Void

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end
