#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

sudo chown root:root logrotate.conf
sudo logrotate "$@" -v logrotate.conf
