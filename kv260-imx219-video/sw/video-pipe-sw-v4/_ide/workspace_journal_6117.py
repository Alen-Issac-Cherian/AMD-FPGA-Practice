# 2026-09-27T22:35:52.562041271
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.create_hls_component(name = "awb-hls-L1",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/hls_config.cfg")

cfg.set_values(key="syn.file", values=["/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_accel.cpp", "/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_accel_config.h"])

cfg.set_values(key="tb.file", values=["/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_tb.cpp", "/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_tb_config.h"])

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

cfg.set_values(key="tb.file", values=["/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_tb.cpp", "/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_tb_config.h", "../xf_headers.hpp"])

cfg.set_values(key="tb.file", values=["/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_tb_config.h", "../xf_headers.hpp"])

cfg.set_values(key="tb.file", values=["../xf_headers.hpp"])

cfg.set_values(key="syn.file", values=["/home/alen/git/Vitis_Libraries/vision/L1/examples/autowhitebalance/xf_autowhitebalance_accel_config.h"])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=[])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h"])

cfg.set_values(key="tb.file", values=["../xf_headers.hpp", "../xf_autowhitebalance_tb.cpp", "../xf_autowhitebalance_tb_config.h"])

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h"])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp"])

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp"])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp"])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp"])

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp"])

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp"])

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp"])

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp"])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp", "./xf_autowhitebalance.hpp", "./xf_autowhitebalance_accel.cpp", "./xf_autowhitebalance_accel_config.h"])

comp.run(operation="SYNTHESIS")

cfg.set_values(key="tb.file", values=["../xf_headers.hpp", "../xf_autowhitebalance_tb.cpp", "../xf_autowhitebalance_tb_config.h", "./xf_autowhitebalance_tb.cpp", "./xf_autowhitebalance_tb_config.h"])

vitis.dispose()

