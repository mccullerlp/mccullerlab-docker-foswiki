#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

(
# run a shubshell
# get the .env file arguments
export $(grep -v '^#' .env | xargs);

curl -fsS -m 10 --retry 5 http://healthchecks.mccullerlab.com/ping/${HC_UUID_DB}/start

sudo ./getacls.sh ./volumes/backup/wiki_acls.acl.gz;
EX1=$?
sudo docker compose exec foswiki bash -c '. /backup/backup_userdata.sh';
EX2=$?

if [ "$EX1" -eq 0 -a "$EX2" -eq 0 ];then
    curl -fsS -m 10 --retry 5 http://healthchecks.mccullerlab.com/ping/${HC_UUID_DB}
else
    curl -fsS -m 10 --retry 5 http://healthchecks.mccullerlab.com/ping/${HC_UUID_DB}/fail
fi
)
