# 2026-07-18T20:58:01.181773725
import vitis

client = vitis.create_client()
client.set_workspace(path="audio-pipe-sw-v1")

platform = client.create_platform_component(name = "zybo-z7-audio",hw_design = "$COMPONENT_LOCATION/../XSA/audio_pipe_hw_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="zybo-z7-audio")
status = platform.build()

comp = client.create_app_component(name="zybo-z7-audio-passthrough-app",platform = "$COMPONENT_LOCATION/../zybo-z7-audio/export/zybo-z7-audio/zybo-z7-audio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="zybo-z7-audio-passthrough-app")
comp.build()

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../audio-pipe-sw-v0/zybo-z7-audio-passthrough-app/src", files=["zybo-z7-audio-passthrough-app.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

