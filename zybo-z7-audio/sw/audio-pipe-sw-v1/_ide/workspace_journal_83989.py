# 2026-07-20T22:28:29.196242109
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v1")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
comp.build()

