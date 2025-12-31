FROM alpine:3.23.2

RUN apk update --no-cache && \
    apk add --no-cache openssh-client-default=10.2_p1-r0

ENTRYPOINT ["/usr/bin/ssh", "-D", "*:9090", "-N", "-f", "$SERVER"]
