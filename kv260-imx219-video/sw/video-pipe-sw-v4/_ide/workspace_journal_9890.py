# 2026-10-01T00:51:11.277708735
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

cfg = client.get_config_file(path="/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/hls_config.cfg")

cfg = client.get_config_file(path="/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v4/awb-hls-L1/hls_config.cfg")

cfg.set_value(section="hls", key="tb.cflags", value="-I/usr/include/opencv4 -std=c++14  ")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_values(key="tb.file_cflags", values=[])

cfg.set_values(key="tb.file", values=["../xf_headers.hpp", "../xf_autowhitebalance_tb.cpp", "../xf_autowhitebalance_tb_config.h", "./xf_autowhitebalance_tb.cpp", "./xf_autowhitebalance_tb_config.h"])

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="-I/usr/include/opencv4 -std=c++14   ")

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp", "./xf_autowhitebalance.hpp", "./xf_autowhitebalance_accel.cpp", "./xf_autowhitebalance_accel_config.h", "./xf_infra.hpp", "./xf_axi_io.hpp"])

cfg.set_values(key="syn.file_csimflags", values=[])

comp.run(operation="C_SIMULATION")

cfg.set_values(key="syn.file", values=["../xf_autowhitebalance_accel.cpp", "../xf_autowhitebalance_accel_config.h", "../xf_config_params.h", "../xf_common.hpp", "../xf_params.hpp", "../xf_structs.hpp", "../xf_types.hpp", "../xf_autowhitebalance.hpp", "../xf_duplicateimage.hpp", "../xf_utility.hpp", "../xf_video_mem.hpp", "./xf_common.hpp", "./xf_config_params.h", "./xf_duplicateimage.hpp", "./xf_headers.hpp", "./xf_params.hpp", "./xf_structs.hpp", "./xf_types.hpp", "./xf_utility.hpp", "./xf_video_mem.hpp", "./xf_autowhitebalance.hpp", "./xf_autowhitebalance_accel.cpp", "./xf_autowhitebalance_accel_config.h", "./xf_infra.hpp", "./xf_axi_io.hpp", "./xf_sw_utils.hpp"])

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["   -L/usr/local/lib -lopencv_imgcodecs -lopencv_imgproc -lopencv_core"])

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-L/usr/lib/x86_64-linux-gnu -Wl,-rpath,/usr/lib/x86_64-linux-gnu -Wl,--error-limit=0 -lopencv_imgcodecs -lopencv_imgproc -lopencv_core"])

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

