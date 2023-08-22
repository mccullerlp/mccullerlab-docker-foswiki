#!/usr/bin/env bash
FNAME=${1:-backup_acls.acl}
getfacl -n -R ../volumes/wiki_data/ > "$FNAME"
