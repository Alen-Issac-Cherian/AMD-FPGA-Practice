# 2026-10-03T01:32:10.908145341
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

vitis.dispose()

