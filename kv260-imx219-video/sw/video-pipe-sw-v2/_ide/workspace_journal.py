# 2026-09-25T15:42:50.450426770
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v2")

vitis.dispose()

