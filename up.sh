#!/usr/bin/env sh

echo "Starting up process"

docker-compose -f docker-compose-storage.yml up -d
sleep 20

docker-compose -f docker-compose-storage-management.yml up -d
sleep 20

docker-compose -f docker-compose-support.yml up -d
sleep 10

docker-compose -f docker-compose-trace.yml up -d
sleep 10

docker-compose -f docker-compose-tools.yml up -d
sleep 10

echo "Everything is up"