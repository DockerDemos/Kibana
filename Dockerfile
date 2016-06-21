# Docker image for running Kibana
#
# http://www.elastic.co/guide/en/kibana/current/setup.html
#

FROM centos:centos7
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV KEY 'https://packages.elastic.co/GPG-KEY-elasticsearch'

ADD kibana.repo /etc/yum.repos.d/kibana.repo

RUN rpm --import $KEY \
    && yum install -y kibana \
    && yum clean all

RUN mkdir -p /etc/service/kibana
ADD kibana.run /etc/service/kibana/run
RUN chmod -R a+x /etc/service/kibana

EXPOSE 5601

ENTRYPOINT [ "/run-kibana.sh" ]
