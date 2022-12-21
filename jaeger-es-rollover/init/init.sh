#!/usr/bin/env sh

echo "./go/bin/es-rollover init ${ELASTICSEARCH_HOST}"
./go/bin/es-rollover init "${ELASTICSEARCH_HOST}" --es.username "${ES_USERNAME}" --es.password "${ES_PASSWORD}"