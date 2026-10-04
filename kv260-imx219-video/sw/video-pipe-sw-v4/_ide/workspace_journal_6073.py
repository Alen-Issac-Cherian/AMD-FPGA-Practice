# 2026-10-02T14:58:01.747393404
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

platform = client.get_component(name="kv260-video")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="kv260-imx219-displayport-app")

client.delete_component(name="componentName")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v3/kv260-imx219-displayport-app/src", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v3/kv260-imx219-displayport-app/src", files=["imx219.h", "mipi.c", "mipi.h", "parameters.h", "vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../../Downloads", files=["imx219.c", "kv260-imx219-displayport-app.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

vitis.dispose()

