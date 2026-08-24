# 2026-07-20T23:34:50.612219493
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v1")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

status = platform.build()

status = platform.build()

vitis.dispose()

