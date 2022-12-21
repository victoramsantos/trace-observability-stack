#!/usr/bin/env sh

export_envs() {
  export ROLLOVER=true
  export NUM_OF_DAYS=1
  export SLEEP_SECONDS=60
}

start_cronjob() {
  while true; do
    echo "./go/bin/es-index-cleaner-linux ${NUM_OF_DAYS} ${ELASTICSEARCH_HOST}"
    ./go/bin/es-index-cleaner-linux ${NUM_OF_DAYS} "${ELASTICSEARCH_HOST}"
    echo "sleeping ${SLEEP_SECONDS} seconds"
    sleep $SLEEP_SECONDS
  done
}

export_envs
start_cronjob
