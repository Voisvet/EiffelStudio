-- This file has been generated by EWG. Do not edit. Changes will be lost!

class CFSTREAM_ERROR_STRUCT

inherit

	EWG_STRUCT

	CFSTREAM_ERROR_STRUCT_EXTERNAL
		export
			{NONE} all
		end

create

	make_new_unshared,
	make_new_shared,
	make_unshared,
	make_shared

feature {ANY} -- Access

	sizeof: INTEGER is
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	domain: INTEGER is
			-- Access member `domain'
		require
			exists: exists
		do
			Result := get_domain_external (item)
		ensure
			result_correct: Result = get_domain_external (item)
		end

	set_domain (a_value: INTEGER) is
			-- Set member `domain'
		require
			exists: exists
		do
			set_domain_external (item, a_value)
		ensure
			a_value_set: a_value = domain
		end

	error: INTEGER is
			-- Access member `error'
		require
			exists: exists
		do
			Result := get_error_external (item)
		ensure
			result_correct: Result = get_error_external (item)
		end

	set_error (a_value: INTEGER) is
			-- Set member `error'
		require
			exists: exists
		do
			set_error_external (item, a_value)
		ensure
			a_value_set: a_value = error
		end

end
