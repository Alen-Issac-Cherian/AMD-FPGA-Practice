# 2026-09-27T21:38:51.321157295
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

vitis.dispose()

