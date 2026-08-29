/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
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
#include "iic_utils.h"
#include "xvprocss.h"
#include "xvtc.h"

XIicPs IicPs_inst_1, IicPs_inst_2;

XVprocSs VprocInst_0, VprocInst_1;
XVprocSs_Config *VprocCfgPtr_0, *VprocCfgPtr_1;

XVtc Vtc_inst;
XVtc_Config *VtcConfig;

XVidC_VideoStream StreamIn_0, StreamOut_0, StreamIn_1, StreamOut_1;
int sink_width = 1920, sink_height = 1080;
int source_width = 800, source_height = 800;
int bpp = 2;

XVidC_VideoMode resId_0, resId_1;
XVidC_VideoTiming const *TimingPtr_0, *TimingPtr_1;

typedef struct
{
	u16 h_active, h_fp, h_sync, h_bp, h_pol;
	u16 v_active, v_fp, v_sync, v_bp, v_pol;
} v_timing;

v_timing const timing[] = {{1920, 88, 44, 148, 1, 1080, 4, 5, 36, 1}};

typedef enum
{
	XVIDC_VM_400x400_60_P,
} Input_VideoMode;

typedef enum
{
	XVIDC_VM_800x800_60_P,
} Output_VideoMode;

typedef struct
{
	Input_VideoMode 	InVmId;
	char 				Name[21];
	XVidC_FrameRate		FrameRate;
	XVidC_VideoTiming	Timing;
} Input_VideoTimingMode;

typedef struct
{
	Output_VideoMode 	OutVmId;
	char 				Name[21];
	XVidC_FrameRate		FrameRate;
	XVidC_VideoTiming	Timing;
} Output_VideoTimingMode;

const Input_VideoTimingMode Input_VideoTimingModes[] = {{XVIDC_VM_400x400_60_P, "400x400@60Hz", XVIDC_FR_60HZ, {400, 48, 32, 80, 560, 1, 400, 3, 10, 6, 419, 0, 0, 0, 0, 1}}};
const XVidC_VideoTimingMode *InVmPtr = &Input_VideoTimingModes[0];

const Output_VideoTimingMode Output_VideoTimingModes[] = {{XVIDC_VM_800x800_60_P, "800x800@60Hz", XVIDC_FR_60HZ, {800, 48, 32, 80, 960, 1, 800, 3, 10, 10, 823, 0, 0, 0, 0, 1}}};
const XVidC_VideoTimingMode *OutVmPtr = &Output_VideoTimingModes[0];



int main()
{
	init_platform();

	print("Video pipe setup on Zynq 7020\n\r");

	//Configure the ZC702 On-board HDMI
	zc702_set_on_board_hdmi(&IicPs_inst_1);
	xil_printf("HDMI Setup Complete!\r\n");

	//Configure VTC
	VtcConfig = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
	int Status = XVtc_CfgInitialize(&Vtc_inst, VtcConfig, VtcConfig->BaseAddress);
	if(Status!= XST_SUCCESS)
	{
	      xil_printf("VTC configuration failed\r\n");
	      return(XST_FAILURE);
	}

	XVtc_Timing sTiming = {};
	sTiming.HActiveVideo 	= timing[0].h_active;
	sTiming.HFrontPorch 	= timing[0].h_fp;
	sTiming.HBackPorch 	= timing[0].h_bp;
	sTiming.HSyncWidth 	= timing[0].h_sync;
	sTiming.HSyncPolarity	= timing[0].h_pol;
	sTiming.VActiveVideo 	= timing[0].v_active;
	sTiming.V0FrontPorch 	= timing[0].v_fp;
	sTiming.V0BackPorch 	= timing[0].v_bp;
	sTiming.V0SyncWidth 	= timing[0].v_sync;
	sTiming.VSyncPolarity	= timing[0].v_pol;

	XVtc_SetGeneratorTiming(&Vtc_inst, &sTiming);
	XVtc_RegUpdateEnable(&Vtc_inst);
	XVtc_EnableGenerator(&Vtc_inst);
	xil_printf("VTC Configuration succeeded\r\n");

	//Configure AXI VDMA
	void * buff_1 = 0x10000000;
	void * buff_2 = 0x10600000;
	void * buff_3 = 0x10C00000;

	int stride = sink_width*bpp;
	/* Configure the Write interface (S2MM)*/
	int wr_offset = (sink_width - source_width)*(bpp/2) + (sink_height - source_height)*(stride/2);
	//int wr_offset_0 = 1958400 + 840;

	//xil_printf("write offset %d\r\n", wr_offset);
	// S2MM Control Register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
	//S2MM Start Address 1
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0x10000000 + wr_offset);
	//S2MM Start Address 2
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0x10600000 + wr_offset);
	//S2MM Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0x10C00000 + wr_offset);
	//S2MM Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, stride);
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
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0x10600000);
	// MM2S Start Address 3
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0x10C00000);
	// MM2S Frame delay / Stride register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride);
	// MM2S HSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, sink_width*bpp);
	// MM2S VSIZE register
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, sink_height);

	xil_printf("VDMA 0 started!\r\n");

	//Configure VPSS 0 as Scaler
	VprocCfgPtr_0 = XVprocSs_LookupConfig(XPAR_V_PROC_SS_0_DEVICE_ID);
	XVprocSs_CfgInitialize(&VprocInst_0, VprocCfgPtr_0, VprocCfgPtr_0->BaseAddress);

//	resId_0 = XVidC_GetVideoModeId(800, 800, XVIDC_FR_60HZ, 0);
//	TimingPtr_0 = XVidC_GetTimingInfo(resId_0);

	//Set the input stream
	StreamIn_0.VmId           = XVIDC_VM_400x400_60_P;
	StreamIn_0.Timing         = InVmPtr->Timing;
	StreamIn_0.ColorFormatId  = XVIDC_CSF_RGB;
	StreamIn_0.ColorDepth     = VprocCfgPtr_0->ColorDepth;
	StreamIn_0.PixPerClk      = VprocCfgPtr_0->PixPerClock;
	StreamIn_0.FrameRate      = XVIDC_FR_60HZ;
	StreamIn_0.IsInterlaced   = 0;
	XVprocSs_SetVidStreamIn(&VprocInst_0, &StreamIn_0);


	//Set the output stream
	StreamOut_0.VmId           = XVIDC_VM_800x800_60_P;
	StreamOut_0.Timing         = OutVmPtr->Timing;
	StreamOut_0.ColorFormatId  = XVIDC_CSF_YCRCB_422;
	StreamOut_0.ColorDepth     = VprocCfgPtr_0->ColorDepth;
	StreamOut_0.PixPerClk      = VprocCfgPtr_0->PixPerClock;
	StreamOut_0.FrameRate      = XVIDC_FR_60HZ;
	StreamOut_0.IsInterlaced   = 0;
	XVprocSs_SetVidStreamOut(&VprocInst_0, &StreamOut_0);


	Status = XVprocSs_SetSubsystemConfig(&VprocInst_0);
	if(Status!= XST_SUCCESS)
	{
	    xil_printf("VPSS failed\r\n");
	    return(XST_FAILURE);
	}
	xil_printf("VPSS 0 Scaler Started\r\n");

	xil_printf("CCM, Gamma Correction, Image Enhancer and Sensor demosaic started in hardware\r\n");

	//Configure OV426 image sensor
	zc702_set_on_board_ov426(&IicPs_inst_2);
	xil_printf("OV426 Setup Complete!\r\n");

//	Status = XGpio_Initialize(&Gpio_inst, XPAR_GPIO_0_DEVICE_ID);
//	if (Status != XST_SUCCESS) {
//	   printf("Error initializing GPIO\n");
//	   return XST_FAILURE;
//	}

//	XGpio_SetDataDirection(&Gpio_inst, si_channel, 0x0);
//	XGpio_DiscreteWrite(&Gpio_inst, si_channel, 0x1);
//	xil_printf("The video input data select value has been set\r\n");

	memset(buff_1, 0x7F, sink_width*sink_height*bpp);
	memset(buff_2, 0x7F, sink_width*sink_height*bpp);
	memset(buff_3, 0x7F, sink_width*sink_height*bpp);

	memset(buff_1, 0x7F, sink_width*sink_height*bpp);
	memset(buff_2, 0x7F, sink_width*sink_height*bpp);
	memset(buff_3, 0x7F, sink_width*sink_height*bpp);

	memset(buff_1, 0x7F, sink_width*sink_height*bpp);
	memset(buff_2, 0x7F, sink_width*sink_height*bpp);
	memset(buff_3, 0x7F, sink_width*sink_height*bpp);

	memset(buff_1, 0x7F, sink_width*sink_height*bpp);
	memset(buff_2, 0x7F, sink_width*sink_height*bpp);
	memset(buff_3, 0x7F, sink_width*sink_height*bpp);

	memset(buff_1, 0x7F, sink_width*sink_height*bpp);
	memset(buff_2, 0x7F, sink_width*sink_height*bpp);
	memset(buff_3, 0x7F, sink_width*sink_height*bpp);

	while(1)
	{
	}

	cleanup_platform();
	return 0;
}
