#!/bin/sh

KIBANA_CONF="${KIBANA_DIR}/config/kibana.yml"
KIBANA_BIN="${KIBANA_DIR}/bin/kibana"

if [[ -z $1 ]] ; then 
  ELASTIC=${ELASTIC_PORT_9200_TCP_ADDR}
else
  ELASTIC="$1"
fi

/bin/sed -i "s/localhost/${ELASTIC}/" ${KIBANA_CONF}

exec $KIBANA_BIN

