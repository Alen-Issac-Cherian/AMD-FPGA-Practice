# 2026-07-08T23:09:28.835425439
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

vitis.dispose()

