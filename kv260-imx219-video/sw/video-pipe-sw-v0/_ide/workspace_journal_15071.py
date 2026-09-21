# 2026-09-18T12:37:11.595499190
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

vitis.dispose()

