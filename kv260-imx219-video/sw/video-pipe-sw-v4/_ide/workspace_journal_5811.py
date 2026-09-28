# 2026-09-28T10:49:52.235012994
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

vitis.dispose()

