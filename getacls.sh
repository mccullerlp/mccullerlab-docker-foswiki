#!/usr/bin/env bash
FNAME=${1:-backup_acls.acl.gz.gz}
getfacl -n -R ../volumes/wiki_data/ | gzip > "$FNAME"
