indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	X_BYTE_BLOB_RECORD

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

	cl_size: INTEGER is
			-- No description available.
		do
			Result := ccom_x_byte_blob_cl_size (item)
		end

	ab_data: CHARACTER_REF is
			-- No description available.
		do
			Result := ccom_x_byte_blob_ab_data (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_x_byte_blob
		end

feature -- Basic Operations

	set_cl_size (a_cl_size: INTEGER) is
			-- Set `cl_size' with `a_cl_size'.
		do
			ccom_x_byte_blob_set_cl_size (item, a_cl_size)
		end

	set_ab_data (a_ab_data: CHARACTER_REF) is
			-- Set `ab_data' with `a_ab_data'.
		require
			non_void_a_ab_data: a_ab_data /= Void
		do
			ccom_x_byte_blob_set_ab_data (item, a_ab_data)
		end

feature {NONE}  -- Externals

	c_size_of_x_byte_blob: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library__BYTE_BLOB_s.h%"]"
		alias
			"sizeof(ecom_control_library::_BYTE_BLOB)"
		end

	ccom_x_byte_blob_cl_size (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__BYTE_BLOB_s_impl.h%"](ecom_control_library::_BYTE_BLOB *):EIF_INTEGER"
		end

	ccom_x_byte_blob_set_cl_size (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__BYTE_BLOB_s_impl.h%"](ecom_control_library::_BYTE_BLOB *, ULONG)"
		end

	ccom_x_byte_blob_ab_data (a_pointer: POINTER): CHARACTER_REF is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__BYTE_BLOB_s_impl.h%"](ecom_control_library::_BYTE_BLOB *):EIF_REFERENCE"
		end

	ccom_x_byte_blob_set_ab_data (a_pointer: POINTER; arg2: CHARACTER_REF) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__BYTE_BLOB_s_impl.h%"](ecom_control_library::_BYTE_BLOB *, EIF_OBJECT)"
		end

end -- X_BYTE_BLOB_RECORD

