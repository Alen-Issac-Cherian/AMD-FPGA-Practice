# 2026-09-28T15:57:28.813123474
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/hls_config.cfg")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp", "./xf_autowhitebalance.hpp", "./xf_autowhitebalance_accel.cpp", "./xf_autowhitebalance_accel_config.h", "./xf_infra.hpp"])

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp", "./xf_autowhitebalance.hpp", "./xf_autowhitebalance_accel.cpp", "./xf_autowhitebalance_accel_config.h", "./xf_infra.hpp", "./xf_axi_io.hpp"])

comp.run(operation="SYNTHESIS")

vitis.dispose()

