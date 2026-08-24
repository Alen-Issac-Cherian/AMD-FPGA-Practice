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
#ifndef _V_HSCALER_TOP_H_
#define _V_HSCALER_TOP_H_

#include "hls_video.h"
#include "ap_int.h"
#include "v_hscaler_config.h"

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

#define HSC_MAX_BITS           (HSC_BITS_PER_COMPONENT*HSC_SAMPLES_PER_CLOCK)
#define MIN_PIXELS         (16)

#define STEP_PRECISION_SHIFT	16
#define STEP_PRECISION         	(1<<STEP_PRECISION_SHIFT)
#define COEFF_PRECISION_SHIFT	12
#define COEFF_PRECISION       	(1<<COEFF_PRECISION_SHIFT)
#define PIXEL_MAX              (1 << HSC_BITS_PER_COMPONENT) - 1

#define CLAMP(a,lo,hi)       ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))
#define MAX(a,b)			 	(((a)>(b))?(a):(b))
#define MIN(a,b)			 	(((a)<(b))?(a):(b))

typedef ap_uint<HSC_BITS_PER_COMPONENT> PIXEL_TYPE;
typedef ap_uint<HSC_SAMPLES_PER_CLOCK * HSC_BITS_PER_COMPONENT> Y_MEM_PIXEL_TYPE;
typedef hls::Scalar<HSC_NR_COMPONENTS, PIXEL_TYPE> YUV_PIXEL;
typedef hls::Scalar<HSC_NR_COMPONENTS * HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE> YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> Y_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE> Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> C_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE> C_MULTI_PIXEL;
typedef hls::stream<ap_axiu<(HSC_MAX_BITS * HSC_NR_COMPONENTS), 1, 1, 1> > HSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<(HSC_MAX_BITS * HSC_NR_COMPONENTS), 1, 1, 1> > HSC_AXI_STREAM_OUT;

typedef hls::stream<YUV_MULTI_PIXEL> HSC_STREAM_MULTIPIX;

#if HSC_SAMPLES_PER_CLOCK==8
#define HSC_PHASE_CTRL_INDEX_BITS		4
#endif

#if HSC_SAMPLES_PER_CLOCK==4
#define HSC_PHASE_CTRL_INDEX_BITS		3
#endif

#if HSC_SAMPLES_PER_CLOCK==2
#define HSC_PHASE_CTRL_INDEX_BITS		2
#endif

#if HSC_SAMPLES_PER_CLOCK==1
#define HSC_PHASE_CTRL_INDEX_BITS		2
#endif

#define HSC_PHASE_CTRL_EN_BITS		1
#define HSC_PHASE_CTRL_PHASE_BITS	HSC_PHASE_SHIFT

#define HSC_PHASE_CTRL_BITS											(HSC_PHASE_CTRL_PHASE_BITS+HSC_PHASE_CTRL_EN_BITS+HSC_PHASE_CTRL_INDEX_BITS)

#define HSC_PHASE_CTRL_PHASE_LSB									0
#define HSC_PHASE_CTRL_PHASE_MSB									(HSC_PHASE_CTRL_PHASE_LSB+HSC_PHASE_CTRL_PHASE_BITS-1)

#define HSC_PHASE_CTRL_INDEX_LSB									(HSC_PHASE_CTRL_PHASE_MSB+1)
#define HSC_PHASE_CTRL_INDEX_MSB									(HSC_PHASE_CTRL_INDEX_LSB+HSC_PHASE_CTRL_INDEX_BITS-1)

#define HSC_PHASE_CTRL_ENABLE_LSB									(HSC_PHASE_CTRL_BITS-1)
typedef ap_uint<(HSC_PHASE_CTRL_BITS * HSC_SAMPLES_PER_CLOCK)> HSC_PHASE_CTRL;

typedef struct
{
	U16 Height;
	U16 WidthIn;     	// Input H Resolution
	U16 WidthOut;    	// Output H resolution
	U8 ColorMode;   	// RGB, 444, 420, 444
	U32 PixelRate;   	// in/out * 65536
	U8 ColorModeOut;	// RGB, 444, 420, 444
	I16 hfltCoeff[HSC_PHASES][HSC_TAPS];
	HSC_PHASE_CTRL phasesH[HSC_MAX_WIDTH / HSC_SAMPLES_PER_CLOCK];
} HSC_HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_hscaler(HSC_AXI_STREAM_IN &s_axis_video, U16 &Height, U16 &WidthIn, U16 &WidthOut,
		U8 &ColorMode, U32 &PixelRate, U8 &ColorModeOut, I16 hfltCoeff[HSC_PHASES][HSC_TAPS],
		HSC_PHASE_CTRL phasesH[HSC_MAX_WIDTH / HSC_SAMPLES_PER_CLOCK],
		HSC_AXI_STREAM_OUT &m_axis_video);
#endif
