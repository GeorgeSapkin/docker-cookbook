#!/bin/sh
echo "Erasing older cluster information file from /etc/foundationdb/fdb.cluster"
sudo rm /etc/foundationdb/fdb.cluster
docker run -d -v /etc/foundationdb:/etc/foundationdb:rw -P georgesapkin/centos-fdb supervisord -c /etc/supervisord.conf
