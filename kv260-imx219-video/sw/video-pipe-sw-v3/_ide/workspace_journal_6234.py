# 2026-09-25T15:18:08.702027800
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

platform = client.create_platform_component(name = "kv260-video",hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

comp = client.get_component(name="kv260-imx219-displayport-app")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["demosaic.c", "demosaic.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["displayport.c", "displayport.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["imx219.c", "imx219.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["kv260-imx219-displayport-app.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["mipi.c", "mipi.h", "parameters.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v2/kv260-imx219-displayport-app/src", files=["vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["vdma.c", "vtc.c", "mipi.c", "kv260-imx219-displayport-app.c", "imx219.c", "displayport.c", "demosaic.c", "platform.c"])

platform = client.get_component(name="kv260-video")
status = platform.build()

comp.build()

vitis.dispose()

