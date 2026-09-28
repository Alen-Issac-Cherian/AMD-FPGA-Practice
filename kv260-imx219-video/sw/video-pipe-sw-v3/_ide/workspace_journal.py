# 2026-09-27T22:12:09.208773237
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

vitis.dispose()

