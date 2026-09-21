# 2026-09-20T19:17:42.898315465
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

vitis.dispose()

