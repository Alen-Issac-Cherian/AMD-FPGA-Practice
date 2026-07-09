# 2026-07-07T22:01:51.812619577
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
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

vitis.dispose()

