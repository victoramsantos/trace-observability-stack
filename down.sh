#!/usr/bin/env sh

echo "Starting down process"

docker-compose -f docker-compose-storage.yml down
docker-compose -f docker-compose-storage-management.yml down
docker-compose -f docker-compose-support.yml down
docker-compose -f docker-compose-tools.yml down
docker-compose -f docker-compose-trace.yml down

docker network rm trace-observability-stack_default
docker volume rm trace-observability-stack_elasticsearch-7-data
docker volume rm trace-observability-stack_grafana_data
docker volume rm trace-observability-stack_prometheus_data

echo "Everything is down"