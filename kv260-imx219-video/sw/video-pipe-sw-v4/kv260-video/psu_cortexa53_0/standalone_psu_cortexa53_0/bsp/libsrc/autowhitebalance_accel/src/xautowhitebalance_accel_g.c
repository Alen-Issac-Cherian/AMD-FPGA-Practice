#include "xautowhitebalance_accel.h"

XAutowhitebalance_accel_Config XAutowhitebalance_accel_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,autowhitebalance-accel-1.0", /* compatible */
		0xa0020000 /* reg */
	},
	 {
		 NULL
	}
};