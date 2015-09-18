# Docker image for running Kibana
#
# http://www.elastic.co/guide/en/kibana/current/setup.html
#

FROM centos:centos7
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV PKG="https://download.elastic.co/kibana/kibana/kibana-4.1.2-linux-x64.tar.gz"

RUN yum install -y tar

RUN mkdir /kibana
RUN curl -sSL $PKG | tar -xz  -C /kibana --strip-components=1
ADD run-kibana.sh /run-kibana.sh

EXPOSE 5601

ENTRYPOINT [ "/run-kibana.sh" ]
