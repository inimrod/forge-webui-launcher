#!/bin/bash

##### SET FOLLOWING VARS #####
SERVER_ADDR="0.0.0.0"
SERVER_PORT=7867
CLI_ARGS="--cuda-malloc"
clone_dir="forge"
venv_dir="venv"
###### END OF VARIABLES ######

# set working dir to this script's location:
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR

# check if install dir already exists
if [ ! -d "$clone_dir" ]; then
    git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git forge
fi

export GRADIO_SERVER_NAME=$SERVER_ADDR
export GRADIO_SERVER_PORT=$SERVER_PORT
export COMMANDLINE_ARGS="$CLI_ARGS"

source $clone_dir/webui.sh