# 2026-07-03T15:49:25.598882469
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v0")

platform = client.create_platform_component(name = "zybo-z7-audio",hw_design = "$COMPONENT_LOCATION/../XSA/audio_pipe_hw_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.create_app_component(name="zybo-z7-audio-passthrough-app",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "helloworld.c", "zybo-z7-audio-passthrough-app.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "zybo-z7-audio-passthrough-app.c"])

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="zybo-z7-audio-passthrough-app")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="hello_world")

status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="hello_world")

comp = client.create_app_component(name="zybo-z7-audio-passthrough-app",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../Zybo-Z7-10-DMA-sw.ide/zybo-z7-audio-demo-app", files=["platform.h", "platform.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../../../Zybo-Z7-10-DMA-sw.ide/zybo-z7-audio-demo-app", files=["platform_config.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

client.delete_component(name="zybo-z7-audio-passthrough-app")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../XSA/audio_pipe_hw_wrapper.xsa")

vitis.dispose()

