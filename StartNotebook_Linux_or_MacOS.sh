#!/usr/bin/env bash


function activate_shell {
    python3 -m venv env
    source ./env/bin/activate
}


function install_requirements {
    pip install --upgrade pip
    pip install wheel
    pip install --requirement requirements.txt
}

function start_notebook {
    jupyter notebook
}

activate_shell
install_requirements
enable_jupyter_extensions

start_notebook
