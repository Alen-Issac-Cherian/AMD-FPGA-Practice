# 2026-07-21T00:17:23.020513708
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v1")

vitis.dispose()

