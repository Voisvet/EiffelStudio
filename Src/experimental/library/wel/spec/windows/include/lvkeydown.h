/*
indexing
description: "WEL: library of reusable components for Windows."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"
*/

#ifndef __WEL_LV_KEYDOWN__
#define __WEL_LV_KEYDOWN__

#ifndef __WEL_COMMONCONTROLS__
#	include <cctrl.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define cwel_lv_keydown_get_hdr(_ptr_) (&(((LV_KEYDOWN *) _ptr_)->hdr))
#define cwel_lv_keydown_get_wvkey(_ptr_) (((LV_KEYDOWN *) _ptr_)->wVKey)

#ifdef __cplusplus
}
#endif

#endif /* __WEL_LV_KEYDOWN__ */
