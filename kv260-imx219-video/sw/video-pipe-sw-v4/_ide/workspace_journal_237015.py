# 2026-10-02T23:32:10.182466553
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

client.delete_component(name="kv260-imx219-displayport-app")

client.delete_component(name="componentName")

comp = client.create_app_component(name="kv260-imx219-displayport-app",platform = "$COMPONENT_LOCATION/../kv260-video/export/kv260-video/kv260-video.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v3/kv260-imx219-displayport-app/src", files=["demosaic.c", "demosaic.h", "displayport.c", "displayport.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v3/kv260-imx219-displayport-app/src", files=["imx219.c", "imx219.h", "kv260-imx219-displayport-app.c", "mipi.c", "mipi.h", "parameters.h", "vdma.c", "vdma.h", "vtc.c", "vtc.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

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

status = platform.build()

comp.build()

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

