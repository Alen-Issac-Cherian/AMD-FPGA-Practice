# 2026-07-20T21:49:20.753914529
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v1")

vitis.dispose()

