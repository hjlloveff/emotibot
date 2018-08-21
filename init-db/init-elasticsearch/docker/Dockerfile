FROM alpine:3.5

RUN apk add --no-cache curl

COPY . /usr/share/bin
WORKDIR /usr/share/bin

ENTRYPOINT ["./entrypoint.sh"]