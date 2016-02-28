#!/bin/bash

set -e

FLUME_CONF_DIR=${FLUME_CONF_DIR:-/opt/lib/flume/conf}
FLUME_CONF_FILE=${FLUME_CONF_FILE:-/opt/lib/flume/conf/flume-conf.properties}

[[ -z "${FLUME_AGENT_NAME}" ]] && { echo "FLUME_AGENT_NAME required"; exit 1; }

echo "Starting flume agent : ${FLUME_AGENT_NAME}"

$FLUME_HOME/bin/flume-ng agent -c ${FLUME_CONF_DIR} -f ${FLUME_CONF_FILE} -n ${FLUME_AGENT_NAME} -Dflume.root.logger=INFO,console
