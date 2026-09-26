# 2026-09-25T19:15:17.949098416
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

