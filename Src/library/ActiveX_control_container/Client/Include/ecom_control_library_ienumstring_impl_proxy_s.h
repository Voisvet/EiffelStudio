/*-----------------------------------------------------------
Implemented `IEnumString' Interface.
-----------------------------------------------------------*/

#ifndef __ECOM_CONTROL_LIBRARY_IENUMSTRING_IMPL_PROXY_S_H__
#define __ECOM_CONTROL_LIBRARY_IENUMSTRING_IMPL_PROXY_S_H__
#ifdef __cplusplus
extern "C" {


namespace ecom_control_library
{
class IEnumString_impl_proxy;
}

}
#endif

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_control_library_IEnumString_s.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
extern "C" {
namespace ecom_control_library
{
class IEnumString_impl_proxy
{
public:
  IEnumString_impl_proxy (IUnknown * a_pointer);
  virtual ~IEnumString_impl_proxy ();

  /*-----------------------------------------------------------
  No description available.
  -----------------------------------------------------------*/
  void ccom_next(  /* [in] */ EIF_INTEGER celt,  /* [out] */ EIF_OBJECT rgelt,  /* [out] */ EIF_OBJECT pcelt_fetched );


  /*-----------------------------------------------------------
  No description available.
  -----------------------------------------------------------*/
  void ccom_skip(  /* [in] */ EIF_INTEGER celt );


  /*-----------------------------------------------------------
  No description available.
  -----------------------------------------------------------*/
  void ccom_reset();


  /*-----------------------------------------------------------
  No description available.
  -----------------------------------------------------------*/
  void ccom_clone1(  /* [out] */ EIF_OBJECT ppenum );


  /*-----------------------------------------------------------
  IUnknown interface
  -----------------------------------------------------------*/
  EIF_POINTER ccom_item();



protected:


private:
  /*-----------------------------------------------------------
  Interface pointer
  -----------------------------------------------------------*/
  ::IEnumString * p_IEnumString;


  /*-----------------------------------------------------------
  Default IUnknown interface pointer
  -----------------------------------------------------------*/
  IUnknown * p_unknown;




};
}
}
#endif

#ifdef __cplusplus
}
#endif
#include "ecom_grt_globals_control_interfaces2.h"


#endif
