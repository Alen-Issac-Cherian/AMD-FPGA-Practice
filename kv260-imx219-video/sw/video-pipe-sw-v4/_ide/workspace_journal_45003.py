# 2026-10-02T22:12:23.669514334
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

platform = client.get_component(name="kv260-video")
status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="CO_SIMULATION")

status = platform.build()

comp = client.get_component(name="kv260-imx219-displayport-app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

