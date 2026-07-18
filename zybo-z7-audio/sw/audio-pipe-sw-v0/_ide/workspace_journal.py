# 2026-07-11T12:19:32.776975897
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

vitis.dispose()

