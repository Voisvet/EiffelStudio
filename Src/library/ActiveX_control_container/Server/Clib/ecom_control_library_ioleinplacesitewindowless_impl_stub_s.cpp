/*-----------------------------------------------------------
Implemented `IOleInPlaceSiteWindowless' Interface.
-----------------------------------------------------------*/

#include "ecom_control_library_IOleInPlaceSiteWindowless_impl_stub_s.h"
static int return_hr_value;

static const IID IID_IOleInPlaceSiteWindowless_ = {0x922eada0,0x3424,0x11cf,{0xb6,0x70,0x00,0xaa,0x00,0x4c,0xd6,0xd8}};

static const IID IID_IOleInPlaceSiteEx_ = {0x9c2cad80,0x3424,0x11cf,{0xb6,0x70,0x00,0xaa,0x00,0x4c,0xd6,0xd8}};

static const IID IID_IOleInPlaceSite_ = {0x00000119,0x0000,0x0000,{0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x46}};

static const IID IID_IOleWindow_ = {0x00000114,0x0000,0x0000,{0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x46}};

#ifdef __cplusplus
extern "C" {
#endif

ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::IOleInPlaceSiteWindowless_impl_stub( EIF_OBJECT eif_obj )
{
	ref_count = 0;
	eiffel_object = eif_adopt (eif_obj);
	type_id = eif_type (eiffel_object);
	
};
/*----------------------------------------------------------------------------------------------------------------------*/

ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::~IOleInPlaceSiteWindowless_impl_stub()
{
	EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("set_item", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_POINTER))eiffel_procedure) (eif_access (eiffel_object), NULL);
	eif_wean (eiffel_object);
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::GetWindow(  /* [out] */ ecom_control_library::wireHWND * phwnd )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_phwnd = NULL;
	if (phwnd != NULL)
	{
		tmp_phwnd = eif_protect (rt_ce.ccom_ce_pointed_pointer ((void **)phwnd, NULL));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("get_window", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_phwnd != NULL) ? eif_access (tmp_phwnd) : NULL));
	
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::ContextSensitiveHelp(  /* [in] */ LONG f_enter_mode )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_f_enter_mode = (EIF_INTEGER)f_enter_mode;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("context_sensitive_help", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_f_enter_mode);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::CanInPlaceActivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("can_in_place_activate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnInPlaceActivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("on_in_place_activate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnUIActivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("on_uiactivate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::GetWindowContext(  /* [out] */ ecom_control_library::IOleInPlaceFrame * * pp_frame, /* [out] */ ecom_control_library::IOleInPlaceUIWindow * * pp_doc, /* [out] */ ecom_control_library::tagRECT * lprc_pos_rect, /* [out] */ ecom_control_library::tagRECT * lprc_clip_rect, /* [in, out] */ ecom_control_library::tagOIFI * lp_frame_info )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_pp_frame = NULL;
	if (pp_frame != NULL)
	{
		tmp_pp_frame = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_cell_226 (pp_frame, NULL));
		if (*pp_frame != NULL)
			(*pp_frame)->AddRef ();
	}
	EIF_OBJECT tmp_pp_doc = NULL;
	if (pp_doc != NULL)
	{
		tmp_pp_doc = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_cell_227 (pp_doc, NULL));
		if (*pp_doc != NULL)
			(*pp_doc)->AddRef ();
	}
	EIF_OBJECT tmp_lprc_pos_rect = NULL;
	if (lprc_pos_rect != NULL)
	{
		tmp_lprc_pos_rect = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (lprc_pos_rect));
	}
	EIF_OBJECT tmp_lprc_clip_rect = NULL;
	if (lprc_clip_rect != NULL)
	{
		tmp_lprc_clip_rect = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (lprc_clip_rect));
	}
	EIF_OBJECT tmp_lp_frame_info = NULL;
	if (lp_frame_info != NULL)
	{
		tmp_lp_frame_info = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_229 (lp_frame_info));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("get_window_context", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE, EIF_REFERENCE, EIF_REFERENCE, EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_pp_frame != NULL) ? eif_access (tmp_pp_frame) : NULL), ((tmp_pp_doc != NULL) ? eif_access (tmp_pp_doc) : NULL), ((tmp_lprc_pos_rect != NULL) ? eif_access (tmp_lprc_pos_rect) : NULL), ((tmp_lprc_clip_rect != NULL) ? eif_access (tmp_lprc_clip_rect) : NULL), ((tmp_lp_frame_info != NULL) ? eif_access (tmp_lp_frame_info) : NULL));
	
	if (*pp_frame != NULL)
		(*pp_frame)->Release ();
	grt_ec_control_interfaces2.ccom_ec_pointed_cell_226 (((tmp_pp_frame != NULL) ? eif_wean (tmp_pp_frame) : NULL), pp_frame);
	if (*pp_frame != NULL)
		(*pp_frame)->AddRef ();
	
	if (*pp_doc != NULL)
		(*pp_doc)->Release ();
	grt_ec_control_interfaces2.ccom_ec_pointed_cell_227 (((tmp_pp_doc != NULL) ? eif_wean (tmp_pp_doc) : NULL), pp_doc);
	if (*pp_doc != NULL)
		(*pp_doc)->AddRef ();
	
	
	
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::Scroll(  /* [in] */ ecom_control_library::tagSIZE scroll_extant )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_scroll_extant = NULL;
	tmp_scroll_extant = eif_protect (grt_ce_control_interfaces2.ccom_ce_record_tag_size_record230 (scroll_extant));
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("scroll", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_scroll_extant != NULL) ? eif_access (tmp_scroll_extant) : NULL));
	if (tmp_scroll_extant != NULL)
		eif_wean (tmp_scroll_extant);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnUIDeactivate(  /* [in] */ LONG f_undoable )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_f_undoable = (EIF_INTEGER)f_undoable;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("on_uideactivate", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_f_undoable);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnInPlaceDeactivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("on_in_place_deactivate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::DiscardUndoState( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("discard_undo_state", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::DeactivateAndUndo( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("deactivate_and_undo", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnPosRectChange(  /* [in] */ ecom_control_library::tagRECT * lprc_pos_rect )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_lprc_pos_rect = NULL;
	if (lprc_pos_rect != NULL)
	{
		tmp_lprc_pos_rect = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (lprc_pos_rect));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("on_pos_rect_change", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_lprc_pos_rect != NULL) ? eif_access (tmp_lprc_pos_rect) : NULL));
	if (tmp_lprc_pos_rect != NULL)
		eif_wean (tmp_lprc_pos_rect);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnInPlaceActivateEx(  /* [out] */ LONG * pf_no_redraw, /* [in] */ ULONG dw_flags )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_pf_no_redraw = NULL;
	if (pf_no_redraw != NULL)
	{
		tmp_pf_no_redraw = eif_protect (rt_ce.ccom_ce_pointed_long (pf_no_redraw, NULL));
	}
	EIF_INTEGER tmp_dw_flags = (EIF_INTEGER)dw_flags;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("on_in_place_activate_ex", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), ((tmp_pf_no_redraw != NULL) ? eif_access (tmp_pf_no_redraw) : NULL), (EIF_INTEGER)tmp_dw_flags);
	rt_ec.ccom_ec_pointed_long (((tmp_pf_no_redraw != NULL) ? eif_wean (tmp_pf_no_redraw) : NULL), pf_no_redraw);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnInPlaceDeactivateEx(  /* [in] */ LONG f_no_redraw )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_f_no_redraw = (EIF_INTEGER)f_no_redraw;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("on_in_place_deactivate_ex", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_f_no_redraw);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::RequestUIActivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("request_uiactivate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::CanWindowlessActivate( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("can_windowless_activate", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::GetCapture( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("get_capture", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::SetCapture(  /* [in] */ LONG f_capture )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_f_capture = (EIF_INTEGER)f_capture;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("set_capture", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_f_capture);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::GetFocus( void )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;
EIF_PROCEDURE eiffel_procedure;
	eiffel_procedure = eif_procedure ("get_focus", type_id);

	(FUNCTION_CAST ( void, (EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object));
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::SetFocus(  /* [in] */ LONG f_focus )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_f_focus = (EIF_INTEGER)f_focus;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("set_focus", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_f_focus);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::GetDC(  /* [in] */ ecom_control_library::tagRECT * p_rect, /* [in] */ ULONG grf_flags, /* [out] */ ecom_control_library::wireHDC * ph_dc )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_p_rect = NULL;
	if (p_rect != NULL)
	{
		tmp_p_rect = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (p_rect));
	}
	EIF_INTEGER tmp_grf_flags = (EIF_INTEGER)grf_flags;
	EIF_OBJECT tmp_ph_dc = NULL;
	if (ph_dc != NULL)
	{
		tmp_ph_dc = eif_protect (rt_ce.ccom_ce_pointed_pointer ((void **)ph_dc, NULL));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("get_dc", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE, EIF_INTEGER, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_p_rect != NULL) ? eif_access (tmp_p_rect) : NULL), (EIF_INTEGER)tmp_grf_flags, ((tmp_ph_dc != NULL) ? eif_access (tmp_ph_dc) : NULL));
	
	if (tmp_p_rect != NULL)
		eif_wean (tmp_p_rect);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::ReleaseDC(  /* [in] */ ecom_control_library::wireHDC h_dc )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_POINTER tmp_h_dc = (EIF_POINTER)h_dc;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("release_dc", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_POINTER))eiffel_procedure) (eif_access (eiffel_object), (EIF_POINTER)tmp_h_dc);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::InvalidateRect(  /* [in] */ ecom_control_library::tagRECT * p_rect, /* [in] */ LONG f_erase )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_p_rect = NULL;
	if (p_rect != NULL)
	{
		tmp_p_rect = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (p_rect));
	}
	EIF_INTEGER tmp_f_erase = (EIF_INTEGER)f_erase;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("invalidate_rect", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), ((tmp_p_rect != NULL) ? eif_access (tmp_p_rect) : NULL), (EIF_INTEGER)tmp_f_erase);
	if (tmp_p_rect != NULL)
		eif_wean (tmp_p_rect);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::InvalidateRgn(  /* [in] */ void * h_rgn, /* [in] */ LONG f_erase )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_POINTER tmp_h_rgn = (EIF_POINTER)h_rgn;
	EIF_INTEGER tmp_f_erase = (EIF_INTEGER)f_erase;
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("invalidate_rgn", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_POINTER, EIF_INTEGER))eiffel_procedure) (eif_access (eiffel_object), (EIF_POINTER)tmp_h_rgn, (EIF_INTEGER)tmp_f_erase);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::ScrollRect(  /* [in] */ INT dx, /* [in] */ INT dy, /* [in] */ ecom_control_library::tagRECT * p_rect_scroll, /* [in] */ ecom_control_library::tagRECT * p_rect_clip )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_dx = (EIF_INTEGER)dx;
	EIF_INTEGER tmp_dy = (EIF_INTEGER)dy;
	EIF_OBJECT tmp_p_rect_scroll = NULL;
	if (p_rect_scroll != NULL)
	{
		tmp_p_rect_scroll = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (p_rect_scroll));
	}
	EIF_OBJECT tmp_p_rect_clip = NULL;
	if (p_rect_clip != NULL)
	{
		tmp_p_rect_clip = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (p_rect_clip));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("scroll_rect", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER, EIF_INTEGER, EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_dx, (EIF_INTEGER)tmp_dy, ((tmp_p_rect_scroll != NULL) ? eif_access (tmp_p_rect_scroll) : NULL), ((tmp_p_rect_clip != NULL) ? eif_access (tmp_p_rect_clip) : NULL));
	if (tmp_p_rect_scroll != NULL)
		eif_wean (tmp_p_rect_scroll);
	if (tmp_p_rect_clip != NULL)
		eif_wean (tmp_p_rect_clip);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::AdjustRect(  /* [in, out] */ ecom_control_library::tagRECT * prc )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_OBJECT tmp_prc = NULL;
	if (prc != NULL)
	{
		tmp_prc = eif_protect (grt_ce_control_interfaces2.ccom_ce_pointed_record_210 (prc));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("adjust_rect", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), ((tmp_prc != NULL) ? eif_access (tmp_prc) : NULL));
	
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::OnDefWindowMessage(  /* [in] */ UINT msg, /* [in] */ UINT w_param, /* [in] */ LONG l_param, /* [out] */ LONG * pl_result )

/*-----------------------------------------------------------
	No description available.
-----------------------------------------------------------*/
{
	ECATCH;

	EIF_INTEGER tmp_msg = (EIF_INTEGER)msg;
	EIF_INTEGER tmp_w_param = (EIF_INTEGER)w_param;
	EIF_INTEGER tmp_l_param = (EIF_INTEGER)l_param;
	EIF_OBJECT tmp_pl_result = NULL;
	if (pl_result != NULL)
	{
		tmp_pl_result = eif_protect (rt_ce.ccom_ce_pointed_long (pl_result, NULL));
	}
	
	EIF_PROCEDURE eiffel_procedure = 0;
	eiffel_procedure = eif_procedure ("on_def_window_message", type_id);

	(FUNCTION_CAST (void, (EIF_REFERENCE, EIF_INTEGER, EIF_INTEGER, EIF_INTEGER, EIF_REFERENCE))eiffel_procedure) (eif_access (eiffel_object), (EIF_INTEGER)tmp_msg, (EIF_INTEGER)tmp_w_param, (EIF_INTEGER)tmp_l_param, ((tmp_pl_result != NULL) ? eif_access (tmp_pl_result) : NULL));
	rt_ec.ccom_ec_pointed_long (((tmp_pl_result != NULL) ? eif_wean (tmp_pl_result) : NULL), pl_result);
	
	END_ECATCH;
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP_(ULONG) ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::Release()

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

STDMETHODIMP_(ULONG) ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::AddRef()

/*-----------------------------------------------------------
	Increment reference count
-----------------------------------------------------------*/
{
	return InterlockedIncrement (&ref_count);
};
/*----------------------------------------------------------------------------------------------------------------------*/

STDMETHODIMP ecom_control_library::IOleInPlaceSiteWindowless_impl_stub::QueryInterface( REFIID riid, void ** ppv )

/*-----------------------------------------------------------
	Query Interface
-----------------------------------------------------------*/
{
	if (riid == IID_IUnknown)
		*ppv = static_cast<ecom_control_library::IOleInPlaceSiteWindowless*>(this);
	else if (riid == IID_IOleInPlaceSiteWindowless_)
		*ppv = static_cast<ecom_control_library::IOleInPlaceSiteWindowless*>(this);
	else if (riid == IID_IOleInPlaceSiteEx_)
		*ppv = static_cast<ecom_control_library::IOleInPlaceSiteEx*>(this);
	else if (riid == IID_IOleInPlaceSite_)
		*ppv = static_cast<ecom_control_library::IOleInPlaceSite*>(this);
	else if (riid == IID_IOleWindow_)
		*ppv = static_cast<ecom_control_library::IOleWindow*>(this);
	else
		return (*ppv = 0), E_NOINTERFACE;

	reinterpret_cast<IUnknown *>(*ppv)->AddRef ();
	return S_OK;
};
/*----------------------------------------------------------------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif