# 2026-09-19T16:29:37.058138625
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
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

