#!/bin/sh

ES_HOST="$1"

/bin/sed -i 's/"+window.location.hostname+"/$1' /var/www/html/config.js

exec /usr/sbin/httpd -DFOREGROUND

