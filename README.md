# forge-webui-launcher
GNU/Linux (Ubuntu 22.04) installer and launcher for [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge).

Can be used for running inferences on [Flux.1](https://blackforestlabs.ai/#get-flux) models.

## Installing:
1. Install `TCMalloc` if not yet installed: `sudo apt-get install -y libgoogle-perftools4 libtcmalloc-minimal4`
1. Clone this repo: `git clone https://github.com/inimrod/forge-webui-launcher.git forge-webui && cd forge-webui && chmod +x run.sh`.
1. Run for the first time: `./run.sh`

# Manual Usage
1. Run: `./run.sh`.

## Download Flux.1-dev model:
```shell
cd ./forge/models/Stable-diffusion;\
wget --inet4-only https://huggingface.co/lllyasviel/flux1_dev/resolve/main/flux1-dev-fp8.safetensors?download=true -O flux1-dev-fp8.safetensors
```