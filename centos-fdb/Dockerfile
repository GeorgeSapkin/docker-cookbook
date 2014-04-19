# User base CentOS supervisor image
FROM georgesapkin/centos-supervisor
MAINTAINER George Sapkin, "https://github.com/GeorgeSapkin/"

# Prevent initialization by installer
RUN mkdir /etc/foundationdb && touch /etc/foundationdb/fdb.cluster

# Install Foundation DB 2.0.5 client and server
RUN yum install -y https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/2.0.5/foundationdb-clients-2.0.5-1.x86_64.rpm https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/2.0.5/foundationdb-server-2.0.5-1.x86_64.rpm

RUN mv /etc/foundationdb/foundationdb.conf /usr/lib/foundationdb/foundationdb.conf.orig
RUN rm -rf /etc/foundationdb /var/lib/foundationdb/data
VOLUME ["/etc/foundationdb", "/fdb-data"]

EXPOSE 4500

ADD docker-start.sh /usr/lib/foundationdb/
ADD foundationdb.conf /etc/supervisor/conf.d/
