# 2026-07-09T21:02:06.153543487
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

vitis.dispose()

