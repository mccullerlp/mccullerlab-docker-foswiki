#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

sudo systemctl "$@" lab-foswiki
./docker_logs.sh
