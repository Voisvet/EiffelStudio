/*-----------------------------------------------------------
Writer for generated Eiffel to C mappers class
-----------------------------------------------------------*/

#include "ecom_gec_ISE.h"
ecom_gec_ISE grt_ec_ISE;

#ifdef __cplusplus
extern "C" {
#endif

ecom_gec_ISE::ecom_gec_ISE(  )
{

};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_1( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_2( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_3( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_5( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelException * ecom_gec_ISE::ccom_ec_pointed_interface_7( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_EXCEPTION_INTERFACE to ecom_eiffel_compiler::IEiffelException *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelException *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelException * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelException * * ecom_gec_ISE::ccom_ec_pointed_cell_8( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelException * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_EXCEPTION_INTERFACE] to ecom_eiffel_compiler::IEiffelException * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelException * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelException * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelException *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_7 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelCompiler * ecom_gec_ISE::ccom_ec_pointed_interface_10( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_COMPILER_INTERFACE to ecom_eiffel_compiler::IEiffelCompiler *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelCompiler *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelCompiler * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelCompiler * * ecom_gec_ISE::ccom_ec_pointed_cell_11( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelCompiler * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_COMPILER_INTERFACE] to ecom_eiffel_compiler::IEiffelCompiler * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelCompiler * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelCompiler * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelCompiler *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_10 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemBrowser * ecom_gec_ISE::ccom_ec_pointed_interface_15( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_SYSTEM_BROWSER_INTERFACE to ecom_eiffel_compiler::IEiffelSystemBrowser *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelSystemBrowser *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelSystemBrowser * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemBrowser * * ecom_gec_ISE::ccom_ec_pointed_cell_16( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelSystemBrowser * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_SYSTEM_BROWSER_INTERFACE] to ecom_eiffel_compiler::IEiffelSystemBrowser * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelSystemBrowser * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelSystemBrowser * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelSystemBrowser *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_15 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelProjectProperties * ecom_gec_ISE::ccom_ec_pointed_interface_18( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_PROJECT_PROPERTIES_INTERFACE to ecom_eiffel_compiler::IEiffelProjectProperties *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelProjectProperties *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelProjectProperties * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelProjectProperties * * ecom_gec_ISE::ccom_ec_pointed_cell_19( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelProjectProperties * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_PROJECT_PROPERTIES_INTERFACE] to ecom_eiffel_compiler::IEiffelProjectProperties * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelProjectProperties * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelProjectProperties * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelProjectProperties *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_18 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelCompletionInfo * ecom_gec_ISE::ccom_ec_pointed_interface_21( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_COMPLETION_INFO_INTERFACE to ecom_eiffel_compiler::IEiffelCompletionInfo *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelCompletionInfo *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelCompletionInfo * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelCompletionInfo * * ecom_gec_ISE::ccom_ec_pointed_cell_22( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelCompletionInfo * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_COMPLETION_INFO_INTERFACE] to ecom_eiffel_compiler::IEiffelCompletionInfo * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelCompletionInfo * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelCompletionInfo * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelCompletionInfo *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_21 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelHTMLDocGenerator * ecom_gec_ISE::ccom_ec_pointed_interface_24( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_HTMLDOC_GENERATOR_INTERFACE to ecom_eiffel_compiler::IEiffelHTMLDocGenerator *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelHTMLDocGenerator *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelHTMLDocGenerator * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelHTMLDocGenerator * * ecom_gec_ISE::ccom_ec_pointed_cell_25( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelHTMLDocGenerator * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_HTMLDOC_GENERATOR_INTERFACE] to ecom_eiffel_compiler::IEiffelHTMLDocGenerator * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelHTMLDocGenerator * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelHTMLDocGenerator * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelHTMLDocGenerator *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_24 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_26( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_31( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_32( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_33( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_34( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_36( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumEiffelClass * ecom_gec_ISE::ccom_ec_pointed_interface_40( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_EIFFEL_CLASS_INTERFACE to ecom_eiffel_compiler::IEnumEiffelClass *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumEiffelClass *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumEiffelClass * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumEiffelClass * * ecom_gec_ISE::ccom_ec_pointed_cell_41( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumEiffelClass * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_EIFFEL_CLASS_INTERFACE] to ecom_eiffel_compiler::IEnumEiffelClass * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumEiffelClass * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumEiffelClass * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumEiffelClass *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_40 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumCluster * ecom_gec_ISE::ccom_ec_pointed_interface_44( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_CLUSTER_INTERFACE to ecom_eiffel_compiler::IEnumCluster *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumCluster *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumCluster * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumCluster * * ecom_gec_ISE::ccom_ec_pointed_cell_45( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumCluster * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_CLUSTER_INTERFACE] to ecom_eiffel_compiler::IEnumCluster * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumCluster * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumCluster * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumCluster *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_44 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumAssembly * ecom_gec_ISE::ccom_ec_pointed_interface_47( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_ASSEMBLY_INTERFACE to ecom_eiffel_compiler::IEnumAssembly *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumAssembly *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumAssembly * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumAssembly * * ecom_gec_ISE::ccom_ec_pointed_cell_48( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumAssembly * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_ASSEMBLY_INTERFACE] to ecom_eiffel_compiler::IEnumAssembly * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumAssembly * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumAssembly * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumAssembly *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_47 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClusterDescriptor * ecom_gec_ISE::ccom_ec_pointed_interface_51( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_CLUSTER_DESCRIPTOR_INTERFACE to ecom_eiffel_compiler::IEiffelClusterDescriptor *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelClusterDescriptor *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelClusterDescriptor * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClusterDescriptor * * ecom_gec_ISE::ccom_ec_pointed_cell_52( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelClusterDescriptor * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_CLUSTER_DESCRIPTOR_INTERFACE] to ecom_eiffel_compiler::IEiffelClusterDescriptor * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelClusterDescriptor * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelClusterDescriptor * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelClusterDescriptor *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_51 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClassDescriptor * ecom_gec_ISE::ccom_ec_pointed_interface_54( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_CLASS_DESCRIPTOR_INTERFACE to ecom_eiffel_compiler::IEiffelClassDescriptor *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelClassDescriptor *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelClassDescriptor * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClassDescriptor * * ecom_gec_ISE::ccom_ec_pointed_cell_55( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelClassDescriptor * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_CLASS_DESCRIPTOR_INTERFACE] to ecom_eiffel_compiler::IEiffelClassDescriptor * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelClassDescriptor * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelClassDescriptor * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelClassDescriptor *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_54 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelFeatureDescriptor * ecom_gec_ISE::ccom_ec_pointed_interface_57( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_FEATURE_DESCRIPTOR_INTERFACE to ecom_eiffel_compiler::IEiffelFeatureDescriptor *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelFeatureDescriptor *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelFeatureDescriptor * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelFeatureDescriptor * * ecom_gec_ISE::ccom_ec_pointed_cell_58( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelFeatureDescriptor * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_FEATURE_DESCRIPTOR_INTERFACE] to ecom_eiffel_compiler::IEiffelFeatureDescriptor * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelFeatureDescriptor * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelFeatureDescriptor * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelFeatureDescriptor *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_57 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumFeature * ecom_gec_ISE::ccom_ec_pointed_interface_60( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_FEATURE_INTERFACE to ecom_eiffel_compiler::IEnumFeature *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumFeature *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumFeature * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumFeature * * ecom_gec_ISE::ccom_ec_pointed_cell_61( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumFeature * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_FEATURE_INTERFACE] to ecom_eiffel_compiler::IEnumFeature * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumFeature * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumFeature * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumFeature *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_60 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_62( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_63( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_66( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_67( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_68( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_69( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

SAFEARRAY *  * ecom_gec_ISE::ccom_ec_pointed_cell_72( EIF_REFERENCE eif_ref, SAFEARRAY *  * old )

/*-----------------------------------------------------------
	Convert CELL [ECOM_ARRAY [STRING]] to SAFEARRAY *  *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	SAFEARRAY *  * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (SAFEARRAY *  *) CoTaskMemAlloc (sizeof (SAFEARRAY * ));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_safearray(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_safearray_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_81( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_88( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_89( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_90( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_91( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_92( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_93( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumParameter * ecom_gec_ISE::ccom_ec_pointed_interface_95( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_PARAMETER_INTERFACE to ecom_eiffel_compiler::IEnumParameter *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumParameter *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumParameter * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumParameter * * ecom_gec_ISE::ccom_ec_pointed_cell_96( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumParameter * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_PARAMETER_INTERFACE] to ecom_eiffel_compiler::IEnumParameter * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumParameter * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumParameter * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumParameter *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_95 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_97( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_98( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelParameterDescriptor * ecom_gec_ISE::ccom_ec_pointed_interface_122( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_PARAMETER_DESCRIPTOR_INTERFACE to ecom_eiffel_compiler::IEiffelParameterDescriptor *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelParameterDescriptor *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelParameterDescriptor * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelParameterDescriptor * * ecom_gec_ISE::ccom_ec_pointed_cell_123( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelParameterDescriptor * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_PARAMETER_DESCRIPTOR_INTERFACE] to ecom_eiffel_compiler::IEiffelParameterDescriptor * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelParameterDescriptor * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelParameterDescriptor * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelParameterDescriptor *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_122 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_126( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_127( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_130( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_131( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_132( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_135( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_136( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelAssemblyProperties * ecom_gec_ISE::ccom_ec_pointed_interface_140( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_ASSEMBLY_PROPERTIES_INTERFACE to ecom_eiffel_compiler::IEiffelAssemblyProperties *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelAssemblyProperties *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelAssemblyProperties * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelAssemblyProperties * * ecom_gec_ISE::ccom_ec_pointed_cell_141( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelAssemblyProperties * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_ASSEMBLY_PROPERTIES_INTERFACE] to ecom_eiffel_compiler::IEiffelAssemblyProperties * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelAssemblyProperties * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelAssemblyProperties * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelAssemblyProperties *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_140 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_144( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_145( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_146( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_147( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_149( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_150( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_152( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_153( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_154( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_157( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_162( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemClusters * ecom_gec_ISE::ccom_ec_pointed_interface_165( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_SYSTEM_CLUSTERS_INTERFACE to ecom_eiffel_compiler::IEiffelSystemClusters *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelSystemClusters *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelSystemClusters * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemClusters * * ecom_gec_ISE::ccom_ec_pointed_cell_166( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelSystemClusters * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_SYSTEM_CLUSTERS_INTERFACE] to ecom_eiffel_compiler::IEiffelSystemClusters * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelSystemClusters * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelSystemClusters * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelSystemClusters *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_165 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemExternals * ecom_gec_ISE::ccom_ec_pointed_interface_168( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_SYSTEM_EXTERNALS_INTERFACE to ecom_eiffel_compiler::IEiffelSystemExternals *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelSystemExternals *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelSystemExternals * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemExternals * * ecom_gec_ISE::ccom_ec_pointed_cell_169( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelSystemExternals * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_SYSTEM_EXTERNALS_INTERFACE] to ecom_eiffel_compiler::IEiffelSystemExternals * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelSystemExternals * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelSystemExternals * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelSystemExternals *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_168 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemAssemblies * ecom_gec_ISE::ccom_ec_pointed_interface_171( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_SYSTEM_ASSEMBLIES_INTERFACE to ecom_eiffel_compiler::IEiffelSystemAssemblies *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelSystemAssemblies *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelSystemAssemblies * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelSystemAssemblies * * ecom_gec_ISE::ccom_ec_pointed_cell_172( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelSystemAssemblies * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_SYSTEM_ASSEMBLIES_INTERFACE] to ecom_eiffel_compiler::IEiffelSystemAssemblies * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelSystemAssemblies * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelSystemAssemblies * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelSystemAssemblies *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_171 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_173( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_174( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_175( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_176( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_177( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_178( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_179( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_180( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_181( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_182( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumClusterProp * ecom_gec_ISE::ccom_ec_pointed_interface_184( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_CLUSTER_PROP_INTERFACE to ecom_eiffel_compiler::IEnumClusterProp *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumClusterProp *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumClusterProp * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumClusterProp * * ecom_gec_ISE::ccom_ec_pointed_cell_185( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumClusterProp * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_CLUSTER_PROP_INTERFACE] to ecom_eiffel_compiler::IEnumClusterProp * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumClusterProp * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumClusterProp * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumClusterProp *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_184 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClusterProperties * ecom_gec_ISE::ccom_ec_pointed_interface_187( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_CLUSTER_PROPERTIES_INTERFACE to ecom_eiffel_compiler::IEiffelClusterProperties *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelClusterProperties *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelClusterProperties * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelClusterProperties * * ecom_gec_ISE::ccom_ec_pointed_cell_188( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEiffelClusterProperties * * old )

/*-----------------------------------------------------------
	Convert CELL [IEIFFEL_CLUSTER_PROPERTIES_INTERFACE] to ecom_eiffel_compiler::IEiffelClusterProperties * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEiffelClusterProperties * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEiffelClusterProperties * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEiffelClusterProperties *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_187 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_190( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_193( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_194( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumClusterExcludes * ecom_gec_ISE::ccom_ec_pointed_interface_205( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_CLUSTER_EXCLUDES_INTERFACE to ecom_eiffel_compiler::IEnumClusterExcludes *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumClusterExcludes *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumClusterExcludes * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumClusterExcludes * * ecom_gec_ISE::ccom_ec_pointed_cell_206( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumClusterExcludes * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_CLUSTER_EXCLUDES_INTERFACE] to ecom_eiffel_compiler::IEnumClusterExcludes * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumClusterExcludes * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumClusterExcludes * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumClusterExcludes *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_205 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_207( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_212( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_213( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_214( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_216( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumIncludePaths * ecom_gec_ISE::ccom_ec_pointed_interface_219( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_INCLUDE_PATHS_INTERFACE to ecom_eiffel_compiler::IEnumIncludePaths *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumIncludePaths *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumIncludePaths * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumIncludePaths * * ecom_gec_ISE::ccom_ec_pointed_cell_220( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumIncludePaths * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_INCLUDE_PATHS_INTERFACE] to ecom_eiffel_compiler::IEnumIncludePaths * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumIncludePaths * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumIncludePaths * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumIncludePaths *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_219 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumObjectFiles * ecom_gec_ISE::ccom_ec_pointed_interface_222( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IENUM_OBJECT_FILES_INTERFACE to ecom_eiffel_compiler::IEnumObjectFiles *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEnumObjectFiles *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEnumObjectFiles * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEnumObjectFiles * * ecom_gec_ISE::ccom_ec_pointed_cell_223( EIF_REFERENCE eif_ref, ecom_eiffel_compiler::IEnumObjectFiles * * old )

/*-----------------------------------------------------------
	Convert CELL [IENUM_OBJECT_FILES_INTERFACE] to ecom_eiffel_compiler::IEnumObjectFiles * *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	ecom_eiffel_compiler::IEnumObjectFiles * * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (ecom_eiffel_compiler::IEnumObjectFiles * *) CoTaskMemAlloc (sizeof (ecom_eiffel_compiler::IEnumObjectFiles *));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (cell_item != NULL)
		*result = ccom_ec_pointed_interface_222 (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_224( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_226( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_228( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_230( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_236( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

BSTR * ecom_gec_ISE::ccom_ec_pointed_cell_237( EIF_REFERENCE eif_ref, BSTR * old )

/*-----------------------------------------------------------
	Convert CELL [STRING] to BSTR *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	BSTR * result = 0;
	EIF_REFERENCE cell_item = 0;

	eif_object = eif_protect (eif_ref);
	if (old != NULL)
		result = old;
	else
		result = (BSTR *) CoTaskMemAlloc (sizeof (BSTR));
	cell_item = eif_field (eif_access (eif_object), "item", EIF_REFERENCE);
	if (*result != NULL)
	{
		rt_ce.free_memory_bstr(*result);
		*result = NULL;
	}
	if (cell_item != NULL)
		*result = rt_ec.ccom_ec_bstr (cell_item);
	eif_wean (eif_object);
	return result;
};
/*----------------------------------------------------------------------------------------------------------------------*/

VARIANT * ecom_gec_ISE::ccom_ec_pointed_record_239( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert ECOM_VARIANT to VARIANT *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		
		EIF_TYPE_ID type_id = eif_type_id ("ECOM_VARIANT");
		EIF_PROCEDURE set_shared =  eif_procedure ("set_shared", type_id);
		(FUNCTION_CAST (void, (EIF_REFERENCE))set_shared) (eif_access (eif_object));
		eif_wean (eif_object);
	}
	return  (VARIANT * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

VARIANT * ecom_gec_ISE::ccom_ec_pointed_record_240( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert ECOM_VARIANT to VARIANT *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		
		EIF_TYPE_ID type_id = eif_type_id ("ECOM_VARIANT");
		EIF_PROCEDURE set_shared =  eif_procedure ("set_shared", type_id);
		(FUNCTION_CAST (void, (EIF_REFERENCE))set_shared) (eif_access (eif_object));
		eif_wean (eif_object);
	}
	return  (VARIANT * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

VARIANT * ecom_gec_ISE::ccom_ec_pointed_record_241( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert ECOM_VARIANT to VARIANT *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		
		EIF_TYPE_ID type_id = eif_type_id ("ECOM_VARIANT");
		EIF_PROCEDURE set_shared =  eif_procedure ("set_shared", type_id);
		(FUNCTION_CAST (void, (EIF_REFERENCE))set_shared) (eif_access (eif_object));
		eif_wean (eif_object);
	}
	return  (VARIANT * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_eiffel_compiler::IEiffelHTMLDocEvents * ecom_gec_ISE::ccom_ec_pointed_interface_246( EIF_REFERENCE eif_ref )

/*-----------------------------------------------------------
	Convert IEIFFEL_HTMLDOC_EVENTS_INTERFACE to ecom_eiffel_compiler::IEiffelHTMLDocEvents *.
-----------------------------------------------------------*/
{
	EIF_OBJECT eif_object = 0;
	EIF_POINTER a_pointer = 0;

	if (eif_ref != NULL)
	{
		eif_object = eif_protect (eif_ref);
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		if (a_pointer  == NULL)
		{
		EIF_PROCEDURE create_item = 0;
			EIF_TYPE_ID type_id = eif_type (eif_object);
			create_item = eif_procedure ("create_item", type_id);
			(FUNCTION_CAST (void, (EIF_REFERENCE)) create_item) (eif_access (eif_object));
		a_pointer = (EIF_POINTER) eif_field (eif_access (eif_object), "item", EIF_POINTER);
		}
		((ecom_eiffel_compiler::IEiffelHTMLDocEvents *) a_pointer)->AddRef ();
		eif_wean (eif_object);
	}
	return  (ecom_eiffel_compiler::IEiffelHTMLDocEvents * ) a_pointer;
};
/*----------------------------------------------------------------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif