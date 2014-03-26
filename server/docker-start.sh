#/bin/bash

if [ ! -f /etc/foundationdb/foundationdb.conf ]; then
    cp /usr/lib/foundationdb/foundationdb.conf.orig /etc/foundationdb/foundationdb.conf
fi

if [ ! -f /etc/foundationdb/fdb.cluster ]; then
    ADDR=$(grep $HOSTNAME /etc/hosts | cut -f1)
    echo "docker:$HOSTNAME@$ADDR:4500" >/etc/foundationdb/fdb.cluster
    chown -R foundationdb:foundationdb /etc/foundationdb
    chmod 0644 /etc/foundationdb/fdb.cluster
    NEWDB=yes
fi

chmod go+rx /fdb-data
DATADIR=/fdb-data/$HOSTNAME
mkdir $DATADIR
chown foundationdb:foundationdb $DATADIR
ln -s $DATADIR /var/lib/foundationdb/data

service foundationdb start

CMD=status
if [ "$NEWDB" = "yes" ]; then
  CMD="configure new single memory; status"
fi

fdbcli --exec "$CMD" --timeout 60
