#!/usr/bin/env sh

echo "Starting build local images"

cd jaeger-es-rollover

cd init
docker build -t init-local . --no-cache
cd ../rollover
docker build -t rollover-local . --no-cache
cd ../lookback
docker build -t lookback-local . --no-cache
cd ../indexcleaner
docker build -t indexcleaner-local . --no-cache

echo "All local images has been generated"