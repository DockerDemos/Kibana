# Docker image for running Kibana
#
# http://www.elasticsearch.org/overview/kibana/installation/
#
# Due to a bug we MUST USE el6 until patch upstream makes it into packages
# unless the image will be built on a RHEL-based (CentOS, Scientific Linux) host
#
# See:
# https://github.com/docker/docker/pull/5930

FROM centos:centos6
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV PKG https://download.elasticsearch.org/kibana/kibana/kibana-3.1.1.tar.gz

RUN yum install -y httpd tar

RUN curl -sSL $PKG | tar -xz  -C /var/www/html --strip-components=1

ADD run-kibana.sh /run-kibana.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT [ "/run-kibana.sh" ]
