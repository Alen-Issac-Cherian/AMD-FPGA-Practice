# 2026-09-18T14:52:03.195089806
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v1")

platform = client.create_platform_component(name = "kv260-video",hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h", "imx219.c", "imx219.h", "kv260-imx219-displayport-app.c", "mipi.c", "mipi.h", "parameters.h", "vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c", "displayport.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c", "displayport.c", "imx219.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c", "displayport.c", "imx219.c", "mipi.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c", "displayport.c", "imx219.c", "mipi.c", "vdma.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c", "demosaic.c", "displayport.c", "imx219.c", "mipi.c", "vdma.c", "vtc.c"])

status = platform.build()

comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../uos-video-practice/zybo-z7-imx219-video/sw/video-pipe-sw-v6/zybo-z7-imx219-hdmi-tx-app-v0", files=["imx219.c", "imx219.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

