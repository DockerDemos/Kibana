#!/bin/sh

/bin/sed -i "s/\"+window.location.hostname+\"/${ELASTIC_PORT_9200_TCP_ADDR}/" \
/var/www/html/config.js

exec /usr/sbin/httpd -DFOREGROUND

