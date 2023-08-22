#!/usr/bin/env bash

sudo docker compose logs -f -n 10 "$@"

