indexing
	description: "Implemented `IExternalConnection' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEXTERNAL_CONNECTION_IMPL_STUB

inherit
	IEXTERNAL_CONNECTION_INTERFACE

	ECOM_STUB

feature -- Basic Operations

	add_connection (extconn: INTEGER; reserved: INTEGER): INTEGER is
			-- No description available.
			-- `extconn' [in].  
			-- `reserved' [in].  
		do
			-- Put Implementation here.
		end

	release_connection (extconn: INTEGER; reserved: INTEGER; f_last_release_closes: INTEGER): INTEGER is
			-- No description available.
			-- `extconn' [in].  
			-- `reserved' [in].  
			-- `f_last_release_closes' [in].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IEXTERNAL_CONNECTION_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::IExternalConnection_impl_stub %"ecom_control_library_IExternalConnection_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IEXTERNAL_CONNECTION_IMPL_STUB

