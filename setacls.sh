#!/usr/bin/env bash

sudo setfacl -m u:$USER:rwX -R ../volumes/wiki_data/
sudo setfacl -d -m u:$USER:rwX -R ../volumes/wiki_data/
