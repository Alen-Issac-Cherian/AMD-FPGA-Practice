# 2026-09-24T16:37:49.433655323
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v2")

vitis.dispose()

