#!/usr/bin/env bash

# needs to run on the foswiki container
tar -cvvzf /backup_data/wiki_data_dump.tar.gz /var/www/foswiki/ /backup_data/wiki_acls*.acl.gz --exclude=pub/* --exclude=working/*  --exclude=ATTACHMENTS/*

