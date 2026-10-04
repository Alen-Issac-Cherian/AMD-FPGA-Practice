# 2026-10-04T17:27:51.657907011
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

