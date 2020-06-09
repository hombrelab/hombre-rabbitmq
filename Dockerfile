# Dockerfile: hombre-python

FROM rabbitmq:management-alpine

ARG version

LABEL version="${version}"
LABEL description="Customized Python Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apk add --no-cache \
    bash \
    nano \
    ca-certificates

RUN rabbitmq-plugins enable --offline \
    rabbitmq_mqtt