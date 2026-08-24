// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
#ifndef _VSCALAR_TOP_H_
#define _VSCALAR_TOP_H_

#include "hls_video.h"
#include "ap_int.h"
#include "v_vscaler_config.h"

typedef unsigned char U8;
typedef unsigned short U16;
typedef unsigned int U32;
typedef signed char I8;
typedef signed short I16;
typedef signed int I32;
typedef signed long long I64;
typedef unsigned long long U64;

#define Y_CH                   (0)
#define U_CH                   (1)
#define V_CH                   (2)

#define STEP_PRECISION_SHIFT    16
#define STEP_PRECISION          (1<<STEP_PRECISION_SHIFT)

#define COEFF_PRECISION_SHIFT   12
#define COEFF_PRECISION         (1<<COEFF_PRECISION_SHIFT)

//File I/O -- TO DO
#define SRC_IMAGE             "im10c_crophPoly120x1000_" //"im10c_croph_00000" //"zoneplate_pfspd2bmp1920x1080_00000"//"im10c_crop_00000" //"im10c_croph_00000" //"im10c_crop_00000" // //"Test_180x64_00000" //"im10c_croph_00000" //"Test_180x64_00000" //"BBC_HD_test_1920x1080"
#define OUTPUT_IMAGE_GOLDEN   "zoneplate_BiC1620x1920Vscale_Out00000" //"zoneplate_540x960Vscale_Out00000" //"zoneplate_1620x1920Vscale_Out00000" //"zoneplate_2160x1920Vscale_Out00000" //"imc_crophPoly120x2160_Vscale_Out00000" "zoneplatejj_1150x1920_Vscale_Out00000" //"zoneplate_P3840x2160_Vscale_Out00000" //"im10c_cropPoly1920x44_00000" //"im10c_crophPoly240x2160_Vscale_Out00000"//"im10c_cropPoly1920x44_00000" ////"Test180x8_Vscale_Out00000" //"TestPoly42_Vscale_Out00000" //"im10c_crophPoly720_Vscale_Out00000" //"TestPoly42_Vscale_Out00000" //"BBC_HD_test_1920x1080" //"im10cBiC3840_00000" //"im10cBiL1280_00000" //"im10cBiL3840_00000" im10cPoly1920_00000
#define OUTPUT_IMAGE_HLS      "zoneplate_BiC1620x1920Vscale_Out00000_hlsOut" //"zoneplate_540x960Vscale_00000_hlsOut" //"zoneplate_2160x1920Vscale_00000_hlsOut" //"imc_crophPoly120x2160_00000_hlsOut" //"zoneplate_1150x1920_00000_hlsOut" //"im10c_cropPoly1920x44_00000_hlsOut"//"im10c_crophPoly240x2160_Vscale_Out00000" //"im10c_cropPoly1920x44_00000_hlsOut" // //"Test180x8_00000_hlsOut" //"TestPoly42_00000_hlsOut"//"im10c_crophPoly720_00000_hlsOut" //"BBC_HD_test_1920x1080_hlsOut" "im10cBiL3840x1080_hlsOut" //"im10c3840x1080_hlsOut"

#define CLAMP(a,lo,hi)          ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))
#define MAX(a,b)                (((a)>(b))?(a):(b))
#define MIN(a,b)                (((a)<(b))?(a):(b))

typedef ap_uint<VSC_BITS_PER_COMPONENT> PIXEL_TYPE;
typedef ap_uint<VSC_NR_COMPONENTS * VSC_SAMPLES_PER_CLOCK * VSC_BITS_PER_COMPONENT> MEM_PIXEL_TYPE;

typedef hls::Scalar<VSC_NR_COMPONENTS, PIXEL_TYPE> YUV_PIXEL;
typedef hls::Scalar<VSC_NR_COMPONENTS * VSC_SAMPLES_PER_CLOCK, PIXEL_TYPE> YUV_MULTI_PIXEL;

typedef hls::stream<
		ap_axiu<(VSC_SAMPLES_PER_CLOCK * VSC_BITS_PER_COMPONENT * VSC_NR_COMPONENTS), 1, 1, 1> > VSC_AXI_STREAM_IN;
typedef hls::stream<
		ap_axiu<(VSC_SAMPLES_PER_CLOCK * VSC_BITS_PER_COMPONENT * VSC_NR_COMPONENTS), 1, 1, 1> > VSC_AXI_STREAM_OUT;
typedef hls::stream<YUV_MULTI_PIXEL> VSC_STREAM_MPIX;

//if width/spc not an integer, then do +1 on the total size
typedef hls::LineBuffer<VSC_TAPS, (VSC_MAX_WIDTH / VSC_SAMPLES_PER_CLOCK), YUV_MULTI_PIXEL> VSC_LINE_BUFFER;
typedef hls::LineBuffer<VSC_TAPS, (VSC_MAX_WIDTH / VSC_SAMPLES_PER_CLOCK), MEM_PIXEL_TYPE> MEM_LINE_BUFFER;

// HW Registers
// The number of bits of some registers depend on the MAX values specified in
// the config.h file. TODO - how to take that in to account while defining the
// registers ?

typedef struct
{
	U16 HeightIn;
	U16 Width;          // Input H Resolution
	U16 HeightOut;      // Output V resolution
	U32 LineRate;       // in/out * 65536
	U8 ColorMode;      // RGB, 444, 420, 444
	I16 vfltCoeff[VSC_PHASES][VSC_TAPS];
} VSC_HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_vscaler(VSC_AXI_STREAM_IN &VscIn,
		//VSC_HW_STRUCT_REG HwReg,
		U16 &HeightIn, U16 &Width, U16 &HeightOut, U32 &LineRate, U8 &ColorMode,
		I16 vfltCoeff[VSC_PHASES][VSC_TAPS], VSC_AXI_STREAM_OUT &VscOut);

#endif
