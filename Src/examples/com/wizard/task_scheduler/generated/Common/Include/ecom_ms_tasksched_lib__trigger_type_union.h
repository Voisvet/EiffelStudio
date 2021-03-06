/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."
Added Union _TRIGGER_TYPE_UNION
	monthly_DOW: typedef
	monthlyd_date: typedef
	weekly_interval: typedef
	daily_interval: typedef
	
-----------------------------------------------------------*/

#ifndef __ECOM_MS_TASKSCHED_LIB__TRIGGER_TYPE_UNION_H__
#define __ECOM_MS_TASKSCHED_LIB__TRIGGER_TYPE_UNION_H__


namespace ecom_MS_TaskSched_lib
{
union tag_TRIGGER_TYPE_UNION;
typedef union ecom_MS_TaskSched_lib::tag_TRIGGER_TYPE_UNION _TRIGGER_TYPE_UNION;
}


#include "eif_com.h"

#include "eif_eiffel.h"

#include "eif_setup.h"

#include "eif_macros.h"

#include "ecom_MS_TaskSched_lib__MONTHLYDOW.h"

#include "ecom_MS_TaskSched_lib__MONTHLYDATE.h"

#include "ecom_MS_TaskSched_lib__WEEKLY.h"

#include "ecom_MS_TaskSched_lib__DAILY.h"



namespace ecom_MS_TaskSched_lib
{
union tag_TRIGGER_TYPE_UNION
{	ecom_MS_TaskSched_lib::_MONTHLYDOW monthly_DOW;
	ecom_MS_TaskSched_lib::_MONTHLYDATE monthlyd_date;
	ecom_MS_TaskSched_lib::_WEEKLY weekly_interval;
	ecom_MS_TaskSched_lib::_DAILY daily_interval;
};
}

#endif
