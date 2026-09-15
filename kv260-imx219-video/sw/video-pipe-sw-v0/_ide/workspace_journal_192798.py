# 2026-09-15T00:13:27.130067631
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

platform = client.create_platform_component(name = "kv260-video",hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

client.delete_component(name="kv260-imx219-displayport-app")

client.delete_component(name="componentName")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "helloworld.c", "kv260-imx219-displayport-app.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "kv260-imx219-displayport-app.c"])

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../ultra96v2_imx219_to_displayport/software/src", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h", "imx219.c", "imx219.h", "mipi.c", "mipi.h", "vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../ultra96v2_imx219_to_displayport/software/src", files=["parameters.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../ultra96v2_imx219_to_displayport/software/imx219_to_mpsoc_displayport_app", files=["demosaic.c", "displayport.c", "imx219.c", "mipi.c", "vdma.c", "vtc.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

