#!/bin/sh

if [[ -z $1 ]] ; then 
  ELASTIC=${ELASTIC_PORT_9200_TCP_ADDR}
else
  ELASTIC="$1"
fi

/bin/sed -i "s/\"+window.location.hostname+\"/$ELASTIC/" \
/var/www/html/config.js

exec /usr/sbin/httpd -DFOREGROUND

