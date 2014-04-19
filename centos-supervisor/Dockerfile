FROM centos
MAINTAINER George Sapkin, "https://github.com/GeorgeSapkin/"

# Update image
RUN yum update -y

# Install supervisor to manage our processes
# the supervisor config file is more likely to change and is therefore added as a later step
RUN yum install -y python-setuptools

RUN easy_install supervisor
RUN mkdir -p /var/log/supervisor

# Create directory for child images to store configuration in
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisord.conf /etc/
