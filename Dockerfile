FROM alpine:3

RUN ls -l /

RUN apk --update --no-cache add git aws-cli



###COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
