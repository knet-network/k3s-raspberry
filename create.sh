#!/usr/bin/env bash

set -e

function log() {
    echo "[INFO] $@"
}

function get_pigen() {
    if [[ ! -d "pigen/" ]]; then
        git clone https://github.com/RPi-Distro/pi-gen pigen/
    fi
}

function skip_stages() {
    echo "" > pigen/stage3/SKIP
    echo "" > pigen/stage4/SKIP
    echo "" > pigen/stage5/SKIP
}

function copy_steps() {
    cp -r custom-stage pigen
    cp config pigen/config
}

function start_build() {
    cd pigen
    chmod +x build-docker.sh
    ./build-docker.sh -c config
    cd ..
}

function end_build() {
    mv pigen/deploy deploy/
    rm -r pigen
}

function main() {
    get_pigen
    skip_stages
    copy_steps
    start_build
    end_build
}

main