indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	X_COAUTHIDENTITY_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

creation
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make is
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER) is
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	user: INTEGER_REF is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_user (item)
		end

	user_length: INTEGER is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_user_length (item)
		end

	domain: INTEGER_REF is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_domain (item)
		end

	domain_length: INTEGER is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_domain_length (item)
		end

	password: INTEGER_REF is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_password (item)
		end

	password_length: INTEGER is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_password_length (item)
		end

	flags: INTEGER is
			-- No description available.
		do
			Result := ccom_x_coauthidentity_flags (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_x_coauthidentity
		end

feature -- Basic Operations

	set_user (a_user: INTEGER_REF) is
			-- Set `user' with `a_user'.
		require
			non_void_a_user: a_user /= Void
		do
			ccom_x_coauthidentity_set_user (item, a_user)
		end

	set_user_length (a_user_length: INTEGER) is
			-- Set `user_length' with `a_user_length'.
		do
			ccom_x_coauthidentity_set_user_length (item, a_user_length)
		end

	set_domain (a_domain: INTEGER_REF) is
			-- Set `domain' with `a_domain'.
		require
			non_void_a_domain: a_domain /= Void
		do
			ccom_x_coauthidentity_set_domain (item, a_domain)
		end

	set_domain_length (a_domain_length: INTEGER) is
			-- Set `domain_length' with `a_domain_length'.
		do
			ccom_x_coauthidentity_set_domain_length (item, a_domain_length)
		end

	set_password (a_password: INTEGER_REF) is
			-- Set `password' with `a_password'.
		require
			non_void_a_password: a_password /= Void
		do
			ccom_x_coauthidentity_set_password (item, a_password)
		end

	set_password_length (a_password_length: INTEGER) is
			-- Set `password_length' with `a_password_length'.
		do
			ccom_x_coauthidentity_set_password_length (item, a_password_length)
		end

	set_flags (a_flags: INTEGER) is
			-- Set `flags' with `a_flags'.
		do
			ccom_x_coauthidentity_set_flags (item, a_flags)
		end

feature {NONE}  -- Externals

	c_size_of_x_coauthidentity: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library__COAUTHIDENTITY_s.h%"]"
		alias
			"sizeof(ecom_control_library::_COAUTHIDENTITY)"
		end

	ccom_x_coauthidentity_user (a_pointer: POINTER): INTEGER_REF is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_REFERENCE"
		end

	ccom_x_coauthidentity_set_user (a_pointer: POINTER; arg2: INTEGER_REF) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, EIF_OBJECT)"
		end

	ccom_x_coauthidentity_user_length (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_INTEGER"
		end

	ccom_x_coauthidentity_set_user_length (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, ULONG)"
		end

	ccom_x_coauthidentity_domain (a_pointer: POINTER): INTEGER_REF is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_REFERENCE"
		end

	ccom_x_coauthidentity_set_domain (a_pointer: POINTER; arg2: INTEGER_REF) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, EIF_OBJECT)"
		end

	ccom_x_coauthidentity_domain_length (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_INTEGER"
		end

	ccom_x_coauthidentity_set_domain_length (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, ULONG)"
		end

	ccom_x_coauthidentity_password (a_pointer: POINTER): INTEGER_REF is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_REFERENCE"
		end

	ccom_x_coauthidentity_set_password (a_pointer: POINTER; arg2: INTEGER_REF) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, EIF_OBJECT)"
		end

	ccom_x_coauthidentity_password_length (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_INTEGER"
		end

	ccom_x_coauthidentity_set_password_length (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, ULONG)"
		end

	ccom_x_coauthidentity_flags (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *):EIF_INTEGER"
		end

	ccom_x_coauthidentity_set_flags (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__COAUTHIDENTITY_s_impl.h%"](ecom_control_library::_COAUTHIDENTITY *, ULONG)"
		end

end -- X_COAUTHIDENTITY_RECORD

