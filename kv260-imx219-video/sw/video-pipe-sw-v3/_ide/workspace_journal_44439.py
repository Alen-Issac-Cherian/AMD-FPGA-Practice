# 2026-09-24T16:40:46.050376160
import vitis

client = vitis.create_client()
client.set_workspace(path="video-pipe-sw-v3")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

example_repo = client.get_example_repo(name="vitis_libraries")

example_repo.display_name = "Vitis Accelerated Libraries Repository"

example_repo.description = "The Vitis software development platform includes an extensive set of open-source, performance-optimized libraries that offer out-of-the-box acceleration with minimal to zero-code changes to your existing applications."

example_repo.local_directory = "/home/alen/.Xilinx/Vitis/2025.2/vitis_libraries"

example_repo.type = "UNKNOWN"

example_repo.git_branch = "2025.2"

example_repo.git_url = "https://github.com/Xilinx/Vitis_Libraries.git"

status = client.update_example_repo(example_repo)

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

vitis.dispose()

