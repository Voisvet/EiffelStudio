indexing
	description: "Implemented `IDropTarget' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IDROP_TARGET_IMPL_STUB

inherit
	IDROP_TARGET_INTERFACE

	ECOM_STUB

feature -- Basic Operations

	drag_enter (p_data_obj: IDATA_OBJECT_INTERFACE; grf_key_state: INTEGER; pt: X_POINTL_RECORD; pdw_effect: INTEGER_REF) is
			-- No description available.
			-- `p_data_obj' [in].  
			-- `grf_key_state' [in].  
			-- `pt' [in].  
			-- `pdw_effect' [in, out].  
		do
			-- Put Implementation here.
		end

	drag_over (grf_key_state: INTEGER; pt: X_POINTL_RECORD; pdw_effect: INTEGER_REF) is
			-- No description available.
			-- `grf_key_state' [in].  
			-- `pt' [in].  
			-- `pdw_effect' [in, out].  
		do
			-- Put Implementation here.
		end

	drag_leave is
			-- No description available.
		do
			-- Put Implementation here.
		end

	drop (p_data_obj: IDATA_OBJECT_INTERFACE; grf_key_state: INTEGER; pt: X_POINTL_RECORD; pdw_effect: INTEGER_REF) is
			-- No description available.
			-- `p_data_obj' [in].  
			-- `grf_key_state' [in].  
			-- `pt' [in].  
			-- `pdw_effect' [in, out].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IDROP_TARGET_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::IDropTarget_impl_stub %"ecom_control_library_IDropTarget_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IDROP_TARGET_IMPL_STUB

