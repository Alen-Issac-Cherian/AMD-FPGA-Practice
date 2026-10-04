# 2026-10-01T21:50:13.927067862
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

