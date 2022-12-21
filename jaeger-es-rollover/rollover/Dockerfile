FROM jaegertracing/jaeger-es-rollover:1.40.0 AS base

FROM alpine

COPY rollover.sh /rollover.sh
COPY --from=base /go /go

RUN chmod +x /rollover.sh

ENTRYPOINT ["/rollover.sh"]
