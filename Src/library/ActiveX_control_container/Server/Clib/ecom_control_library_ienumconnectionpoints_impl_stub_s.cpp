/*-----------------------------------------------------------
Implemented `IEnumConnectionPoints' Interface.
-----------------------------------------------------------*/

#include "ecom_control_library_IEnumConnectionPoints_impl_stub_s.h"
static int return_hr_value;

static const IID IID_IEnumConnectionPoints_ = {0xb196b285,0xbab4,0x101a,{0xb6,0x9c,0x00,0xaa,0x00,0x34,0x1d,0x07}};

#ifdef __cplusplus
extern "C" {
#endif

ecom_control_library::IEnumConnectionPoints_impl_stub::IEnumConnectionPoints_impl_stub( EIF_OBJECT eif_obj )
{
	ref_count = 0;
	eiffel_object = eif_adopt (eif_obj);
	type_id = eif_type (eiffel_object);
	
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_control_library::IEnumConnectionPoints_impl_stub::~IEnumConnectionPoints_impl_stub()
{
	EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("set_item", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_POINTER))eiffel_procedure) (eif_access (eiffel_object), NULL);
	eif_wean (eiffel_object);
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IEnumConnectionPoints_impl_stub::RemoteNext(  /* [in] */ ULONG c_connections, /* [out] */ ecom_control_library::IConnectionPoint * * pp_cp, /* [out] */ ULONG * pc_fetched )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_c_connections = (EIF_INTEGER)c_connections;
	EIF_OBJECT tmp_pp_cp = NULL;
	if (pp_cp != NULL)
	{
		tmp_pp_cp = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_cell_149 (pp_cp, NULL));
		if (*pp_cp != NULL)
			(*pp_cp)->AddRef ();
	}
	EIF_OBJECT tmp_pc_fetched = NULL;
	if (pc_fetched != NULL)
	{
		tmp_pc_fetched = eif_protect (rt_ce.ccom_ce_pointed_unsigned_long (pc_fetched, NULL));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("remote_next", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER, EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_c_connections, ((tmp_pp_cp != NULL) ? eif_access (tmp_pp_cp) : NULL), ((tmp_pc_fetched != NULL) ? eif_access (tmp_pc_fetched) : NULL));
	
	if (*pp_cp != NULL)
		(*pp_cp)->Release ();
	grt_ec_control_interfaces2.ccom_ec_pointed_cell_149 (((tmp_pp_cp != NULL) ? eif_wean (tmp_pp_cp) : NULL), pp_cp);
	if (*pp_cp != NULL)
		(*pp_cp)->AddRef ();
	rt_ec.ccom_ec_pointed_unsigned_long (((tmp_pc_fetched != NULL) ? eif_wean (tmp_pc_fetched) : NULL), pc_fetched);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IEnumConnectionPoints_impl_stub::Skip(  /* [in] */ ULONG c_connections )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_c_connections = (EIF_INTEGER)c_connections;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("skip", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_c_connections);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IEnumConnectionPoints_impl_stub::Reset( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("reset", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IEnumConnectionPoints_impl_stub::Clone(  /* [out] */ ecom_control_library::IEnumConnectionPoints * * ppenum )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_ppenum = NULL;
	if (ppenum != NULL)
	{
		tmp_ppenum = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_cell_153 (ppenum, NULL));
		if (*ppenum != NULL)
			(*ppenum)->AddRef ();
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("clone1", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_ppenum != NULL) ? eif_access (tmp_ppenum) : NULL));
	
	if (*ppenum != NULL)
		(*ppenum)->Release ();
	grt_ec_control_interfaces2.ccom_ec_pointed_cell_153 (((tmp_ppenum != NULL) ? eif_wean (tmp_ppenum) : NULL), ppenum);
	if (*ppenum != NULL)
		(*ppenum)->AddRef ();
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP_(ULONG) ecom_control_library::IEnumConnectionPoints_impl_stub::Release()

/*-----------------------------------------------------------
	Decrement reference count
-----------------------------------------------------------*/
{
	LONG res = InterlockedDecrement (&ref_count);
	if (res  ==  0)
	{
		delete this;
	}
	return res;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP_(ULONG) ecom_control_library::IEnumConnectionPoints_impl_stub::AddRef()

/*-----------------------------------------------------------
	Increment reference count
-----------------------------------------------------------*/
{
	return InterlockedIncrement (&ref_count);
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IEnumConnectionPoints_impl_stub::QueryInterface( REFIID riid, void ** ppv )

/*-----------------------------------------------------------
	Query Interface
-----------------------------------------------------------*/
{
	if (riid == IID_IUnknown)
		*ppv = static_cast<ecom_control_library::IEnumConnectionPoints*>(this);
	else if (riid == IID_IEnumConnectionPoints_)
		*ppv = static_cast<ecom_control_library::IEnumConnectionPoints*>(this);
	else
		return (*ppv = 0), E_NOINTERFACE;

	reinterpret_cast<IUnknown *>(*ppv)->AddRef ();
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif