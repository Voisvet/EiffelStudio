/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."Added Record tagFUNCDESC
	memid: LONG
			-- No description available.
	lprgscode: Pointed Type
			-- No description available.
	lprgelemdescParam: Pointed Type
			-- No description available.
	funckind: typedef
			-- No description available.
	invkind: typedef
			-- No description available.
	callconv: typedef
			-- No description available.
	cParams: SHORT
			-- No description available.
	cParamsOpt: SHORT
			-- No description available.
	oVft: SHORT
			-- No description available.
	cScodes: SHORT
			-- No description available.
	elemdescFunc: typedef
			-- No description available.
	wFuncFlags: USHORT
			-- No description available.
	
-----------------------------------------------------------*/

#ifndef __ECOM_CONTROL_LIBRARY_TAGFUNCDESC_S_IMPL_H__
#define __ECOM_CONTROL_LIBRARY_TAGFUNCDESC_S_IMPL_H__

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_control_library_tagFUNCDESC_s.h"

#include "ecom_control_library_tagELEMDESC_s.h"

#include "ecom_grt_globals_control_interfaces2.h"

#ifdef __cplusplus
extern "C" {
#endif



#ifdef __cplusplus

#define ccom_tag_funcdesc_memid(_ptr_) (EIF_INTEGER)(LONG)(((ecom_control_library::tagFUNCDESC *)_ptr_)->memid)

#define ccom_tag_funcdesc_set_memid(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->memid) = (LONG)_field_)

#define ccom_tag_funcdesc_lprgscode(_ptr_) (EIF_REFERENCE)(rt_ce.ccom_ce_pointed_hresult (((ecom_control_library::tagFUNCDESC *)_ptr_)->lprgscode, NULL))

#define ccom_tag_funcdesc_set_lprgscode(_ptr_, _field_) (grt_ce_control_interfaces2.ccom_free_memory_pointed_346(((ecom_control_library::tagFUNCDESC *)_ptr_)->lprgscode), (((ecom_control_library::tagFUNCDESC *)_ptr_)->lprgscode) = rt_ec.ccom_ec_pointed_hresult (eif_access (_field_), NULL))

#define ccom_tag_funcdesc_lprgelemdesc_param(_ptr_) (EIF_REFERENCE)(grt_ce_control_interfaces2.ccom_ce_pointed_record_348 (((ecom_control_library::tagFUNCDESC *)_ptr_)->lprgelemdescParam))

#define ccom_tag_funcdesc_set_lprgelemdesc_param(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->lprgelemdescParam) = (ecom_control_library::tagELEMDESC *)_field_)

#define ccom_tag_funcdesc_funckind(_ptr_) (EIF_INTEGER)(((ecom_control_library::tagFUNCDESC *)_ptr_)->funckind)

#define ccom_tag_funcdesc_set_funckind(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->funckind) = (long)_field_)

#define ccom_tag_funcdesc_invkind(_ptr_) (EIF_INTEGER)(((ecom_control_library::tagFUNCDESC *)_ptr_)->invkind)

#define ccom_tag_funcdesc_set_invkind(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->invkind) = (long)_field_)

#define ccom_tag_funcdesc_callconv(_ptr_) (EIF_INTEGER)(((ecom_control_library::tagFUNCDESC *)_ptr_)->callconv)

#define ccom_tag_funcdesc_set_callconv(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->callconv) = (long)_field_)

#define ccom_tag_funcdesc_c_params(_ptr_) (EIF_INTEGER)(SHORT)(((ecom_control_library::tagFUNCDESC *)_ptr_)->cParams)

#define ccom_tag_funcdesc_set_c_params(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->cParams) = (SHORT)_field_)

#define ccom_tag_funcdesc_c_params_opt(_ptr_) (EIF_INTEGER)(SHORT)(((ecom_control_library::tagFUNCDESC *)_ptr_)->cParamsOpt)

#define ccom_tag_funcdesc_set_c_params_opt(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->cParamsOpt) = (SHORT)_field_)

#define ccom_tag_funcdesc_o_vft(_ptr_) (EIF_INTEGER)(SHORT)(((ecom_control_library::tagFUNCDESC *)_ptr_)->oVft)

#define ccom_tag_funcdesc_set_o_vft(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->oVft) = (SHORT)_field_)

#define ccom_tag_funcdesc_c_scodes(_ptr_) (EIF_INTEGER)(SHORT)(((ecom_control_library::tagFUNCDESC *)_ptr_)->cScodes)

#define ccom_tag_funcdesc_set_c_scodes(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->cScodes) = (SHORT)_field_)

#define ccom_tag_funcdesc_elemdesc_func(_ptr_) (EIF_REFERENCE)(grt_ce_control_interfaces2.ccom_ce_record_tag_elemdesc_record347 (((ecom_control_library::tagFUNCDESC *)_ptr_)->elemdescFunc))

#define ccom_tag_funcdesc_set_elemdesc_func(_ptr_, _field_) (memcpy (&(((ecom_control_library::tagFUNCDESC *)_ptr_)->elemdescFunc), (ecom_control_library::tagELEMDESC *)_field_, sizeof (ecom_control_library::tagELEMDESC)))

#define ccom_tag_funcdesc_w_func_flags(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_control_library::tagFUNCDESC *)_ptr_)->wFuncFlags)

#define ccom_tag_funcdesc_set_w_func_flags(_ptr_, _field_) ((((ecom_control_library::tagFUNCDESC *)_ptr_)->wFuncFlags) = (USHORT)_field_)

#endif
#ifdef __cplusplus
}
#endif

#endif