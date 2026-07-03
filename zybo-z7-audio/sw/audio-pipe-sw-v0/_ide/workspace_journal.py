# 2026-07-03T18:20:25.944815345
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

