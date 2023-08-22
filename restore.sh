#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

sudo docker compose exec foswiki bash -c '. /backup/restore_userdata.sh'

