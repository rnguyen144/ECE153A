#include "xgpio.h"

XGpio_Config XGpio_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40000000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x10 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40010000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0x2003, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x5 /* xlnx,gpio-width */
	},
	 {
		 NULL
	}
};