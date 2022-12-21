FROM jaegertracing/jaeger-es-rollover:1.40.0 AS base

FROM alpine

COPY lookback.sh /lookback.sh
COPY --from=base /go /go

RUN chmod +x /lookback.sh

ENTRYPOINT ["/lookback.sh"]
