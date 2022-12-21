FROM jaegertracing/jaeger-es-index-cleaner:1.40.0 AS base

FROM alpine

COPY index-cleaner.sh /index-cleaner.sh
COPY --from=base /go /go

RUN chmod +x /index-cleaner.sh

ENTRYPOINT ["/index-cleaner.sh"]
