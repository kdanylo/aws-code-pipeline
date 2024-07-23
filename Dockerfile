FROM alpine:3

RUN apk --update --no-cache add git aws-cli

RUN ls -l

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
