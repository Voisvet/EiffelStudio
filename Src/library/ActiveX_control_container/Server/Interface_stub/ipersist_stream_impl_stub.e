indexing
	description: "Implemented `IPersistStream' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IPERSIST_STREAM_IMPL_STUB

inherit
	IPERSIST_STREAM_INTERFACE

	ECOM_STUB

feature -- Basic Operations

	get_class_id (p_class_id: ECOM_GUID) is
			-- No description available.
			-- `p_class_id' [out].  
		do
			-- Put Implementation here.
		end

	is_dirty is
			-- No description available.
		do
			-- Put Implementation here.
		end

	load (pstm: ISTREAM_INTERFACE) is
			-- No description available.
			-- `pstm' [in].  
		do
			-- Put Implementation here.
		end

	save (pstm: ISTREAM_INTERFACE; f_clear_dirty: INTEGER) is
			-- No description available.
			-- `pstm' [in].  
			-- `f_clear_dirty' [in].  
		do
			-- Put Implementation here.
		end

	get_size_max (pcb_size: X_ULARGE_INTEGER_RECORD) is
			-- No description available.
			-- `pcb_size' [out].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IPERSIST_STREAM_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::IPersistStream_impl_stub %"ecom_control_library_IPersistStream_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IPERSIST_STREAM_IMPL_STUB

