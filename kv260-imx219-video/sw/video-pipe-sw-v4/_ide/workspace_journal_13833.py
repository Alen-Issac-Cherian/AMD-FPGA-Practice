# 2026-09-28T19:21:52.049475933
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v4")

comp = client.get_component(name="awb-hls-L1")
comp.run(operation="C_SIMULATION")

comp.run(operation="PACKAGE")

vitis.dispose()

