# 2026-07-07T00:30:57.262731266
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

platform = client.get_component(name="zybo-z7-audio")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/audio_pipe_hw_wrapper.xsa")

status = platform.build()

client.delete_component(name="hello_world")

comp = client.create_app_component(name="zybo-z7-audio-passthrough-app",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "zybo-z7-audio-passthrough-app.c"])

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

status = platform.build()

comp.build()

vitis.dispose()

