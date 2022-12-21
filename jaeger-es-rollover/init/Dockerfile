FROM jaegertracing/jaeger-es-rollover:1.40.0 AS base

FROM alpine

COPY init.sh /init.sh
COPY --from=base /go /go

RUN apk add curl
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
