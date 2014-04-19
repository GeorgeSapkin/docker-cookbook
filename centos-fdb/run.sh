#!/bin/sh
docker run -d -v /etc/foundationdb:/etc/foundationdb:rw -P georgesapkin/centos-fdb supervisord -c /etc/supervisord.conf
