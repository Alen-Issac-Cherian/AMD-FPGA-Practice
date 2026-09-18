# 2026-09-15T22:23:02.450092350
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

platform = client.get_component(name="kv260-video")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa")

status = platform.build()

comp.build()

client.delete_component(name="kv260-video")

client.delete_component(name="kv260-imx219-displayport-app")

client.delete_component(name="componentName")

platform = client.create_platform_component(name = "kv260-video",hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

status = platform.build()

status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

client.delete_component(name="hello_world")

client.delete_component(name="componentName")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../../Downloads", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h", "imx219.c", "imx219.h", "kv260-imx219-displayport-app.c", "mipi.c", "mipi.h", "parameters.h", "platform.c", "platform.h", "vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "helloworld.c", "kv260-imx219-displayport-app.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c"])

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/vtc.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "vtc.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/demosaic.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/displayport.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "vtc.c", "demosaic.c", "displayport.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/mipi.c"])

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "vtc.c", "demosaic.c", "displayport.c", "mipi.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/vdma.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "vtc.c", "demosaic.c", "displayport.c", "mipi.c", "vdma.c", "/home/alen/git/AMD-FPGA-Practice/kv260-imx219-video/sw/video-pipe-sw-v0/kv260-imx219-displayport-app/src/imx219.c"])

status = platform.build()

comp.build()

vitis.dispose()

