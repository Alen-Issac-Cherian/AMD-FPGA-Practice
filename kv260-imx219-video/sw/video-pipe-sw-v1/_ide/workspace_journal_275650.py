# 2026-09-18T15:40:40.783556857
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v1")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../video-pipe-sw-v0/kv260-imx219-displayport-app/src", files=["imx219.c", "imx219.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

