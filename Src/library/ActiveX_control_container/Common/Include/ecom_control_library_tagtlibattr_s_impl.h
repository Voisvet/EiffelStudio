/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."Added Record tagTLIBATTR
	guid: typedef
			-- No description available.
	lcid: ULONG
			-- No description available.
	syskind: typedef
			-- No description available.
	wMajorVerNum: USHORT
			-- No description available.
	wMinorVerNum: USHORT
			-- No description available.
	wLibFlags: USHORT
			-- No description available.
	
-----------------------------------------------------------*/

#ifndef __ECOM_CONTROL_LIBRARY_TAGTLIBATTR_S_IMPL_H__
#define __ECOM_CONTROL_LIBRARY_TAGTLIBATTR_S_IMPL_H__

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_control_library_tagTLIBATTR_s.h"

#include "ecom_grt_globals_control_interfaces2.h"

#ifdef __cplusplus
extern "C" {
#endif



#ifdef __cplusplus

#define ccom_tag_tlibattr_guid(_ptr_) (EIF_REFERENCE)(grt_ce_control_interfaces2.ccom_ce_record_ecom_guid56 (((ecom_control_library::tagTLIBATTR *)_ptr_)->guid))

#define ccom_tag_tlibattr_set_guid(_ptr_, _field_) (memcpy (&(((ecom_control_library::tagTLIBATTR *)_ptr_)->guid), (GUID *)_field_, sizeof (GUID)))

#define ccom_tag_tlibattr_lcid(_ptr_) (EIF_INTEGER)(ULONG)(((ecom_control_library::tagTLIBATTR *)_ptr_)->lcid)

#define ccom_tag_tlibattr_set_lcid(_ptr_, _field_) ((((ecom_control_library::tagTLIBATTR *)_ptr_)->lcid) = (ULONG)_field_)

#define ccom_tag_tlibattr_syskind(_ptr_) (EIF_INTEGER)(((ecom_control_library::tagTLIBATTR *)_ptr_)->syskind)

#define ccom_tag_tlibattr_set_syskind(_ptr_, _field_) ((((ecom_control_library::tagTLIBATTR *)_ptr_)->syskind) = (long)_field_)

#define ccom_tag_tlibattr_w_major_ver_num(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_control_library::tagTLIBATTR *)_ptr_)->wMajorVerNum)

#define ccom_tag_tlibattr_set_w_major_ver_num(_ptr_, _field_) ((((ecom_control_library::tagTLIBATTR *)_ptr_)->wMajorVerNum) = (USHORT)_field_)

#define ccom_tag_tlibattr_w_minor_ver_num(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_control_library::tagTLIBATTR *)_ptr_)->wMinorVerNum)

#define ccom_tag_tlibattr_set_w_minor_ver_num(_ptr_, _field_) ((((ecom_control_library::tagTLIBATTR *)_ptr_)->wMinorVerNum) = (USHORT)_field_)

#define ccom_tag_tlibattr_w_lib_flags(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_control_library::tagTLIBATTR *)_ptr_)->wLibFlags)

#define ccom_tag_tlibattr_set_w_lib_flags(_ptr_, _field_) ((((ecom_control_library::tagTLIBATTR *)_ptr_)->wLibFlags) = (USHORT)_field_)

#endif
#ifdef __cplusplus
}
#endif

#endif