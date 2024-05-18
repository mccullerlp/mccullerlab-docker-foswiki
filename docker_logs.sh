#!/usr/bin/env bash

if which docker-log-loop.sh > /dev/null; then
    sudo docker-log-loop.sh
else
    sudo bash -c 'trap "echo Exited!; exit;" SIGINT SIGTERM; while true;do docker compose logs -f -n 10 '"$@"'; sleep 5; done'
fi

