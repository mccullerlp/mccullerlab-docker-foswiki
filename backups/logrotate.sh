#!/usr/bin/env bash

src_dir=$(dirname "$0")
cd $src_dir

(
# run a shubshell
# get the .env file arguments
export $(grep -v '^#' ../.env | xargs);

sudo chown root:root logrotate.conf
sudo logrotate "$@" -v logrotate.conf
EX1=$?

if [ "$EX1" -eq 0 ];then
    curl -fsS -m 10 --retry 5 http://healthchecks.mccullerlab.com/ping/${HC_UUID_LOGROTATE}
else
    curl -fsS -m 10 --retry 5 http://healthchecks.mccullerlab.com/ping/${HC_UUID_LOGROTATE}/fail
fi
)
