# 2026-09-25T15:45:58.887787209
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

vitis.dispose()

