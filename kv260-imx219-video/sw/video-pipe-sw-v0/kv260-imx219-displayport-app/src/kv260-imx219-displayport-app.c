/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "displayport.h"
#include "vtc.h"
#include "imx219.h"
#include "mipi.h"
#include "demosaic.h"
#include "vdma.h"


int main()
{
    init_platform();

    xil_printf("\r\n Setting up IMX219 1920x1080p@60Hz video pipeline on Kria KV260\r\n");
    
    displayport_init();
	displayport_hpd_event_isr();
	displayport_hpd_pulse_isr();
    vtc_init();
	vdma_init();
	demosaic_init();
	mipi_init();
	imx219_init();

	xil_printf("Entire video pipeline activated\r\n");
    
    cleanup_platform();
    return 0;
}
