#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

sudo docker compose exec foswiki bash -c 'cd /var/www/foswiki/tools/;./solrindex'

