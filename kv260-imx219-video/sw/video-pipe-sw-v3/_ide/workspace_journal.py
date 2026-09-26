# 2026-09-26T16:41:13.105312534
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

platform = client.get_component(name="kv260-video")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/video_pipe_hw_wrapper.xsa")

status = platform.build()

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

status = platform.build()

comp.build()

