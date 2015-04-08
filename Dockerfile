# Docker image for running Kibana
#
# http://www.elastic.co/guide/en/kibana/current/setup.html
#

FROM centos:centos7
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV PKG https://download.elastic.co/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz
ENV KIBANA_DIR /kibana

RUN yum install -y tar

RUN mkdir $KIBANA_DIR
RUN curl -sSL $PKG | tar -xz  -C /kibana --strip-components=1
ADD run-kibana.sh /run-kibana.sh

EXPOSE 5601

ENTRYPOINT [ "/run-kibana.sh" ]
