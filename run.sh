#!/bin/bash

##### SET FOLLOWING VARS #####
SERVER_ADDR="0.0.0.0"
SERVER_PORT=7867
clone_dir="forge"
venv_dir="venv"
###### END OF VARIABLES ######

# set working dir to this script's location:
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR

# check if install dir already exists
if [ ! -d "$clone_dir" ]; then
    git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git forge
    # cd forge
    # sed -i -e "s/server_name='0.0.0.0'/ /" gradio_app.py # need to remove this so we can set via env var below
fi

export GRADIO_SERVER_NAME=$SERVER_ADDR
export GRADIO_SERVER_PORT=$SERVER_PORT

source $clone_dir/webui.sh