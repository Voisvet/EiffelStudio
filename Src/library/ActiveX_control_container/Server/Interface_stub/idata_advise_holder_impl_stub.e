indexing
	description: "Implemented `IDataAdviseHolder' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IDATA_ADVISE_HOLDER_IMPL_STUB

inherit
	IDATA_ADVISE_HOLDER_INTERFACE

	ECOM_STUB

feature -- Basic Operations

	advise (p_data_object: IDATA_OBJECT_INTERFACE; p_fetc: TAG_FORMATETC_RECORD; advf: INTEGER; p_advise: IADVISE_SINK_INTERFACE; pdw_connection: INTEGER_REF) is
			-- No description available.
			-- `p_data_object' [in].  
			-- `p_fetc' [in].  
			-- `advf' [in].  
			-- `p_advise' [in].  
			-- `pdw_connection' [out].  
		do
			-- Put Implementation here.
		end

	unadvise (dw_connection: INTEGER) is
			-- No description available.
			-- `dw_connection' [in].  
		do
			-- Put Implementation here.
		end

	enum_advise (ppenum_advise: CELL [IENUM_STATDATA_INTERFACE]) is
			-- No description available.
			-- `ppenum_advise' [out].  
		do
			-- Put Implementation here.
		end

	send_on_data_change (p_data_object: IDATA_OBJECT_INTERFACE; dw_reserved: INTEGER; advf: INTEGER) is
			-- No description available.
			-- `p_data_object' [in].  
			-- `dw_reserved' [in].  
			-- `advf' [in].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IDATA_ADVISE_HOLDER_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::IDataAdviseHolder_impl_stub %"ecom_control_library_IDataAdviseHolder_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IDATA_ADVISE_HOLDER_IMPL_STUB

