# 2026-09-28T14:21:04.738022063
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

vitis.dispose()

