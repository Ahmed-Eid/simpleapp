FROM centos
MAINTAINER Sander <mail@sandervanvugt.nl>

# Add repo file
#ADD ./sander.repo /etc/yum.repos.d/

# Install cool software
RUN yum -y update && yum -y install httpd && yum clean all

ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]
