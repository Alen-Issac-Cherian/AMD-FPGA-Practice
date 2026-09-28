/*
 * Copyright (C) 2019-2022, Xilinx, Inc.
 * Copyright (C) 2022-2026, Advanced Micro Devices, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_AWB_CONFIG_H_
#define _XF_AWB_CONFIG_H_

#include "xf_common.hpp"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "xf_infra.hpp"
#include "xf_autowhitebalance.hpp"
#include "xf_duplicateimage.hpp"
#include <ap_int.h>

/* Input image Dimensions */
#define WIDTH 3840
// Maximum Input image width
#define HEIGHT 2160
// Maximum Input image height

#define XF_CV_DEPTH_IN_1 2
#define XF_CV_DEPTH_IN_2 2
#define XF_CV_DEPTH_OUT_1 2

#define NPPCX XF_NPPC1

#define IN_TYPE XF_10UC3
#define OUT_TYPE XF_10UC3

#define WB_TYPE XF_WB_GRAY
#define XF_USE_URAM 1
#define T_8U 0
#define T_16U 0
#define T_12U 0
#define T_10U 1

#if T_8U
#define HIST_SIZE 256
#endif
#if T_10U
#define HIST_SIZE 1024
#endif
#if T_16U || T_12U
#define HIST_SIZE 4096
#endif

// 10-bit samples are carried in 16-bit containers on the OpenCV (testbench) side
#define CV_IN_TYPE CV_16UC3
#define CV_OUT_TYPE CV_16UC3

/* AXI4-Stream video ports.
 * TDATA width = bits per pixel per cycle (3 x 10 = 30 for XF_10UC3 @ NPPC1).
 * Vivado/HLS pads the physical TDATA port to a byte multiple (32 bits) with the
 * pixel in the low 30 bits. */
#define AXI_WIDTH_IN XF_PIXELWIDTH(IN_TYPE, NPPCX)
#define AXI_WIDTH_OUT XF_PIXELWIDTH(OUT_TYPE, NPPCX)

typedef hls::stream<ap_axiu<AXI_WIDTH_IN, 1, 1, 1> > InVideoStrm_t;
typedef hls::stream<ap_axiu<AXI_WIDTH_OUT, 1, 1, 1> > OutVideoStrm_t;

void autowhitebalance_accel(InVideoStrm_t& s_axis_video,
                            OutVideoStrm_t& m_axis_video,
                            float thresh,
                            int rows,
                            int cols,
                            float inputMin,
                            float inputMax,
                            float outputMin,
                            float outputMax);
#endif
//_XF_AWB_CONFIG_H_