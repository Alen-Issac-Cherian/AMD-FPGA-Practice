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
#include "xil_io.h"

int source_width  = 640;
int source_height = 480;

int sink_width  = 1920;
int sink_height = 1080;

int bpp = 4;

static inline u32 f2u(float f) {
    u32 u;
    memcpy(&u, &f, sizeof(u));
    return u;
}

int main()
{
	int write_offset_l = ((sink_width - (source_width*2))*(bpp/3) + (sink_height - source_height)*(sink_width*bpp/2));
	int write_offset_r = (((sink_width*2) + source_width)*(bpp/3) + (sink_height - source_height)*(sink_width*bpp/2));
	
    init_platform();

    xil_printf("\r\n Setting up IMX219 640x480p@60Hz RAW10, 2 lanes at 1 PPC video pipeline on Kria KV260\r\n");
    
    displayport_init();
	displayport_hpd_event_isr();
	displayport_hpd_pulse_isr();
    vtc_init();
	
	memset(0x10000000, 0x1FF1FF1F, (sink_height*sink_width*bpp));
	memset(0x12000000, 0x1FF1FF1F, (sink_height*sink_width*bpp));
	memset(0x14000000, 0x1FF1FF1F, (sink_height*sink_width*bpp));
	
	/* Start of VDMA Configuration */
	/* Configure the Write interface (S2MM)*/
	// S2MM Control Register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
	//S2MM Start Address 1
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0x10000000 + write_offset_l);
	//S2MM Start Address 2
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0x12000000 + write_offset_l);
	//S2MM Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0x14000000 + write_offset_l);
	//S2MM Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, sink_width*bpp);
	// S2MM HSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, source_width*bpp);
	// S2MM VSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, source_height);

	/* Configure the Read interface (MM2S)*/
	// MM2S Control Register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
	// MM2S Start Address 1
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, 0x10000000);
	// MM2S Start Address 2
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0x12000000);
	// MM2S Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0x14000000);
	// MM2S Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, sink_width*bpp);
	// MM2S HSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, sink_width*bpp);
	// MM2S VSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, sink_height);

	xil_printf("VDMA 0 Configured!\r\n");

	/* Start of VDMA 1 Configuration */
	/* Configure the Write interface (S2MM)*/
	// S2MM Control Register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x30, 0x8B);
	//S2MM Start Address 1
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xAC, 0x10000000 + write_offset_r);
	//S2MM Start Address 2
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB0, 0x12000000 + write_offset_r);
	//S2MM Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB4, 0x14000000 + write_offset_r);
	//S2MM Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA8, sink_width*bpp);
	// S2MM HSIZE register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA4, source_width*bpp);
	// S2MM VSIZE register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA0, source_height);

	/* Configure the Read interface (MM2S)
	// MM2S Control Register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x00, 0x8B);
	// MM2S Start Address 1
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x5C, 0x10000000);
	// MM2S Start Address 2
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x60, 0x12000000);
	// MM2S Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x64, 0x14000000);
	// MM2S Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x58, sink_width*bpp);
	// MM2S HSIZE register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x54, sink_width*bpp);
	// MM2S VSIZE register
	Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x50, sink_height);*/

	xil_printf("VDMA 1 Configured!\r\n");
	
	/* Start of HLS AWB IP Configuration */
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x18, source_height);
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x20, source_width);
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x10, f2u(0.9f));
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x28, f2u(0.0f));
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x30, f2u(1023.0f));
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x38, f2u(0.0f));
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x40, f2u(1023.0f));
    Xil_Out32(XPAR_AUTOWHITEBALANCE_ACC_0_BASEADDR + 0x00, (1 << 7) | (1 << 0));
	
	xil_printf("HLS AWB IP Configured!\r\n");
	
	demosaic_init();
	mipi_init();
	imx219_init();

	xil_printf("Entire video pipeline activated\r\n");
    
    cleanup_platform();
    return 0;
}
