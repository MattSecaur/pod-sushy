FROM centos:8
LABEL description="containerized sushy" version="1.6"
MAINTAINER msecaur@redhat.com

#RUN dnf -y update

# Setup
USER root

# Packages
RUN yum install -y python3-pip python3-libvirt && dnf clean all
RUN pip3 install -U pip setuptools
RUN pip3 install sushy sushy-tools

ENV PATH="/usr/local/bin:${PATH}"

COPY sushy.sh /usr/local/bin/sushy.sh
RUN chmod +x /usr/local/bin/sushy.sh

ENTRYPOINT ["/usr/local/bin/sushy.sh"]

# Set a default command useful for debugging
#CMD ["/bin/bash", "--login"]
