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

#include "xf_autowhitebalance_accel_config.h"

static bool flag;

static uint32_t hist0[3][HIST_SIZE];
static uint32_t hist1[3][HIST_SIZE];
static int igain_0[3];
static int igain_1[3];

void AWBKernel(InVideoStrm_t& s_axis_video,
               OutVideoStrm_t& m_axis_video,
               int height,
               int width,
               uint32_t hist0[3][HIST_SIZE],
               uint32_t hist1[3][HIST_SIZE],
               int gain0[3],
               int gain1[3],
               float thresh,
               float inputMin,
               float inputMax,
               float outputMin,
               float outputMax) {
#pragma HLS INLINE OFF

    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_CV_DEPTH_IN_1> in_mat(height, width);
    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_CV_DEPTH_OUT_1> out_mat(height, width);
    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_CV_DEPTH_IN_2> impop(height, width);

// clang-format off
#pragma HLS DATAFLOW
    // clang-format on
    uint32_t awb_config = (int)(thresh * 256); // thresh_awb int Q24_8 format change to Q16_16 format
    xf::cv::AXIvideo2xfMat<AXI_WIDTH_IN, IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_CV_DEPTH_IN_1>(s_axis_video, in_mat);

    if (WB_TYPE == 1) {
        xf::cv::AWBhistogram<IN_TYPE, IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_USE_URAM, 1, HIST_SIZE, XF_CV_DEPTH_IN_1,
                             XF_CV_DEPTH_IN_2>(in_mat, impop, hist0, awb_config, inputMin, inputMax, outputMin,
                                               outputMax);
        xf::cv::AWBNormalization<IN_TYPE, IN_TYPE, HEIGHT, WIDTH, NPPCX, 1, HIST_SIZE, XF_CV_DEPTH_IN_2,
                                 XF_CV_DEPTH_OUT_1>(impop, out_mat, hist1, awb_config, inputMin, inputMax, outputMin,
                                                    outputMax);
    } else {
        xf::cv::AWBChannelGain<IN_TYPE, IN_TYPE, HEIGHT, WIDTH, NPPCX, 0, XF_CV_DEPTH_IN_1, XF_CV_DEPTH_IN_2>(
            in_mat, impop, awb_config, gain0);
        xf::cv::AWBGainUpdate<IN_TYPE, IN_TYPE, HEIGHT, WIDTH, NPPCX, 0, XF_CV_DEPTH_IN_2, XF_CV_DEPTH_OUT_1>(
            impop, out_mat, awb_config, gain1);
    }
    xf::cv::xfMat2AXIvideo<AXI_WIDTH_OUT, IN_TYPE, HEIGHT, WIDTH, NPPCX, XF_CV_DEPTH_OUT_1>(out_mat, m_axis_video);
}

void autowhitebalance_accel(InVideoStrm_t& s_axis_video,
                            OutVideoStrm_t& m_axis_video,
                            float thresh,
                            int rows,
                            int cols,
                            float inputMin,
                            float inputMax,
                            float outputMin,
                            float outputMax) {
// clang-format off
#pragma HLS INTERFACE axis      port=s_axis_video
#pragma HLS INTERFACE axis      port=m_axis_video

#pragma HLS INTERFACE s_axilite port=thresh   
#pragma HLS INTERFACE s_axilite port=inputMin 
#pragma HLS INTERFACE s_axilite port=inputMax 
#pragma HLS INTERFACE s_axilite port=outputMin
#pragma HLS INTERFACE s_axilite port=outputMax
#pragma HLS INTERFACE s_axilite port=rows     
#pragma HLS INTERFACE s_axilite port=cols     
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS ARRAY_PARTITION variable=hist0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=hist1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=igain_0 complete 
#pragma HLS ARRAY_PARTITION variable=igain_1 complete
    // clang-format on

    if (!flag) {
        AWBKernel(s_axis_video, m_axis_video, rows, cols, hist0, hist1, igain_0, igain_1, thresh, inputMin, inputMax, outputMin,
                  outputMax);

        flag = 1;

    } else {
        AWBKernel(s_axis_video, m_axis_video, rows, cols, hist1, hist0, igain_1, igain_0, thresh, inputMin, inputMax, outputMin,
                  outputMax);

        flag = 0;
    }
}
