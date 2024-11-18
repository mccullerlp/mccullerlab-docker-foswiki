FROM garethgeorge/backrest:latest

RUN apk update; \
    apk upgrade; \
    apk add logrotate sudo acl; 
    # apk add docker;

# RUN apk update && apk add --no-cache --virtual docker-cli python3 .docker-compose-deps python3-dev libffi-dev openssl-dev gcc libc-dev make python3 py3-pip py-pip curl libffi-dev openssl-dev gcc libc-dev rust cargo make && pip3 install docker-compose

RUN apk add --no-cache docker-cli docker-compose pigz # buildkit 


