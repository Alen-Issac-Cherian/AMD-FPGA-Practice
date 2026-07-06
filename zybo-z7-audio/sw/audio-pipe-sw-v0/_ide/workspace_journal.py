# 2026-07-06T17:06:08.366311093
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

platform = client.create_platform_component(name = "zybo-z7-audio",hw_design = "$COMPONENT_LOCATION/../XSA/audio_pipe_hw_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

