/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."Added Record tagQACONTAINER
	cbSize: ULONG
			-- No description available.
	pClientSite: Pointed Type
			-- No description available.
	pAdviseSink: Pointed Type
			-- No description available.
	pPropertyNotifySink: Pointed Type
			-- No description available.
	pUnkEventSink: IUnknown *
			-- No description available.
	dwAmbientFlags: ULONG
			-- No description available.
	colorFore: typedef
			-- No description available.
	colorBack: typedef
			-- No description available.
	pFont: Pointed Type
			-- No description available.
	pUndoMgr: Pointed Type
			-- No description available.
	dwAppearance: ULONG
			-- No description available.
	lcid: LONG
			-- No description available.
	hpal: typedef
			-- No description available.
	pBindHost: Pointed Type
			-- No description available.
	pOleControlSite: Pointed Type
			-- No description available.
	pServiceProvider: Pointed Type
			-- No description available.
	
-----------------------------------------------------------*/

#ifndef __ECOM_CONTROL_LIBRARY_TAGQACONTAINER_S_H__
#define __ECOM_CONTROL_LIBRARY_TAGQACONTAINER_S_H__
#ifdef __cplusplus
extern "C" {
#endif


namespace ecom_control_library
{
struct tagtagQACONTAINER;
typedef struct ecom_control_library::tagtagQACONTAINER tagQACONTAINER;
}

#ifdef __cplusplus
}
#endif

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_control_library_IOleClientSite_s.h"

#include "ecom_control_library_IAdviseSinkEx_s.h"

#include "ecom_control_library_IPropertyNotifySink_s.h"

#include "ecom_control_library_IOleUndoManager_s.h"

#include "ecom_aliases.h"

#include "ecom_control_library_IBindHost_s.h"

#include "ecom_control_library_IOleControlSite_s.h"

#include "ecom_control_library_IServiceProvider_s.h"

#ifdef __cplusplus
extern "C" {
#endif



namespace ecom_control_library
{
struct tagtagQACONTAINER
{	ULONG cbSize;
	ecom_control_library::IOleClientSite * pClientSite;
	ecom_control_library::IAdviseSinkEx * pAdviseSink;
	ecom_control_library::IPropertyNotifySink * pPropertyNotifySink;
	IUnknown * pUnkEventSink;
	ULONG dwAmbientFlags;
	OLE_COLOR colorFore;
	OLE_COLOR colorBack;
	IFont * pFont;
	ecom_control_library::IOleUndoManager * pUndoMgr;
	ULONG dwAppearance;
	LONG lcid;
	ecom_control_library::wireHPALETTE hpal;
	ecom_control_library::IBindHost * pBindHost;
	ecom_control_library::IOleControlSite * pOleControlSite;
	ecom_control_library::IServiceProvider * pServiceProvider;
};
}
#ifdef __cplusplus
}
#endif

#endif