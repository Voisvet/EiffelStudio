/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."Added Record tagMSG
	hWnd: typedef
			-- No description available.
	message: UINT
			-- No description available.
	wParam: UINT
			-- No description available.
	lParam: LONG
			-- No description available.
	time: ULONG
			-- No description available.
	pt: typedef
			-- No description available.
	
-----------------------------------------------------------*/

#ifndef __ECOM_CONTROL_LIBRARY_TAGMSG_S_IMPL_H__
#define __ECOM_CONTROL_LIBRARY_TAGMSG_S_IMPL_H__

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_control_library_tagMSG_s.h"

#include "ecom_grt_globals_control_interfaces2.h"

#ifdef __cplusplus
extern "C" {
#endif



#ifdef __cplusplus

#define ccom_tag_msg_h_wnd(_ptr_) (EIF_POINTER)(ecom_control_library::wireHWND)(((ecom_control_library::tagMSG *)_ptr_)->hWnd)

#define ccom_tag_msg_set_h_wnd(_ptr_, _field_) (grt_ce_control_interfaces2.free_memory_202(((ecom_control_library::tagMSG *)_ptr_)->hWnd), (((ecom_control_library::tagMSG *)_ptr_)->hWnd) = (ecom_control_library::wireHWND)_field_)

#define ccom_tag_msg_message(_ptr_) (EIF_INTEGER)(UINT)(((ecom_control_library::tagMSG *)_ptr_)->message)

#define ccom_tag_msg_set_message(_ptr_, _field_) ((((ecom_control_library::tagMSG *)_ptr_)->message) = (UINT)_field_)

#define ccom_tag_msg_w_param(_ptr_) (EIF_INTEGER)(UINT)(((ecom_control_library::tagMSG *)_ptr_)->wParam)

#define ccom_tag_msg_set_w_param(_ptr_, _field_) ((((ecom_control_library::tagMSG *)_ptr_)->wParam) = (UINT)_field_)

#define ccom_tag_msg_l_param(_ptr_) (EIF_INTEGER)(LONG)(((ecom_control_library::tagMSG *)_ptr_)->lParam)

#define ccom_tag_msg_set_l_param(_ptr_, _field_) ((((ecom_control_library::tagMSG *)_ptr_)->lParam) = (LONG)_field_)

#define ccom_tag_msg_time(_ptr_) (EIF_INTEGER)(ULONG)(((ecom_control_library::tagMSG *)_ptr_)->time)

#define ccom_tag_msg_set_time(_ptr_, _field_) ((((ecom_control_library::tagMSG *)_ptr_)->time) = (ULONG)_field_)

#define ccom_tag_msg_pt(_ptr_) (EIF_REFERENCE)(grt_ce_control_interfaces2.ccom_ce_record_tag_point_record203 (((ecom_control_library::tagMSG *)_ptr_)->pt))

#define ccom_tag_msg_set_pt(_ptr_, _field_) (memcpy (&(((ecom_control_library::tagMSG *)_ptr_)->pt), (ecom_control_library::tagPOINT *)_field_, sizeof (ecom_control_library::tagPOINT)))

#endif
#ifdef __cplusplus
}
#endif

#endif