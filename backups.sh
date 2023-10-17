#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

sudo ./getacls.sh ../volumes/wiki_backup/wiki_acls.acl.gz
sudo docker compose exec foswiki bash -c '. /backup/backup_userdata.sh'

