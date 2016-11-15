FROM alpine:3.4
ADD ./simple-http-time /http-time
ENTRYPOINT ["/http-time"]
