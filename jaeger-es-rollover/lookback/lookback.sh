#!/usr/bin/env sh

export_envs() {
  export UNIT=minutes
  export UNIT_COUNT=5
  export SLEEP_SECONDS=60
}

start_cronjob() {
  while true; do
    echo "./go/bin/es-rollover lookback --unit=${UNIT} --unit-count=${UNIT_COUNT} ${ELASTICSEARCH_HOST}"
    ./go/bin/es-rollover lookback --unit=${UNIT} --unit-count=${UNIT_COUNT} "${ELASTICSEARCH_HOST}"
    echo "sleeping ${SLEEP_SECONDS} seconds"
    sleep $SLEEP_SECONDS
  done
}

export_envs
start_cronjob
