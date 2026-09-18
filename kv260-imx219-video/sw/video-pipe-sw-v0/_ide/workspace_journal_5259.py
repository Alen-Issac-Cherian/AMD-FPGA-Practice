# 2026-09-18T11:42:55.434590805
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v0")

vitis.dispose()

