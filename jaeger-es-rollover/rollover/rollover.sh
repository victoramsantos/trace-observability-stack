#!/usr/bin/env sh

export_envs() {
  export CONDITIONS="{\"max_age\": \"5m\"}"
  export SLEEP_SECONDS=60
}

start_cronjob() {
  while true; do
    echo "./go/bin/es-rollover rollover --conditions=${CONDITIONS} ${ELASTICSEARCH_HOST}"
    ./go/bin/es-rollover rollover --conditions="${CONDITIONS}" "${ELASTICSEARCH_HOST}"
    echo "sleeping ${SLEEP_SECONDS} seconds"
    sleep $SLEEP_SECONDS
  done
}

export_envs
start_cronjob
