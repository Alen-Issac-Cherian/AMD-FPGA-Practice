# 2026-09-15T01:04:09.168226421
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

vitis.dispose()

