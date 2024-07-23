FROM alpine:3

RUN ls -l /

RUN apk --update --no-cache add git aws-cli
