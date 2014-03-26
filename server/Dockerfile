# Use CentOS base image
FROM centos-fdb-client
MAINTAINER George Sapkin, george.sapkin@gmail.com

# Update image
# RUN yum update -y

# Install Foundation DB 2.0.4 server
RUN yum install -y python-setuptools https://foundationdb.com/downloads/I_accept_the_FoundationDB_Community_License_Agreement/2.0.4/foundationdb-server-2.0.4-1.x86_64.rpm

RUN mv /etc/foundationdb/foundationdb.conf /usr/lib/foundationdb/foundationdb.conf.orig
RUN rm -rf /etc/foundationdb /var/lib/foundationdb/data
VOLUME ["/etc/foundationdb", "/fdb-data"]

EXPOSE 4500

ADD docker-start.sh /usr/lib/foundationdb/

RUN easy_install supervisor
RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/
CMD ["/usr/local/bin/supervisord", "-c", "/etc/supervisord.conf"]
