# 2026-09-21T10:58:23.684984541
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v2")

platform = client.create_platform_component(name = "kv260-video",hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["imx219.c", "imx219.h", "kv260-imx219-displayport-app.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["mipi.c", "mipi.h", "parameters.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["vdma.c", "vdma.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["vtc.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

vitis.dispose()

