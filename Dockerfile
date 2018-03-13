FROM alpine:3.7

LABEL maintainer="grega.pusnik@gmail.com"

WORKDIR /radius

RUN apk update && apk upgrade && \
    apk add --update freeradius \
    freeradius-postgresql freeradius-eap freeradius-rest && \
    rm /var/cache/apk/*

EXPOSE 1812/udp 1813/udp
