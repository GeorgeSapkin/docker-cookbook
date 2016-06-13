FROM centos
MAINTAINER George Sapkin, "https://github.com/GeorgeSapkin/"

RUN \
	yum update -y && \
	yum install -y python-setuptools && \
	yum clean all && \
	easy_install supervisor && \
	mkdir -p /var/log/supervisor && \
	mkdir -p /etc/supervisor/conf.d

# supervisor config file is more likely to change and is therefore added
# as a later step
ADD supervisord.conf /etc/
