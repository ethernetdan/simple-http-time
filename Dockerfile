FROM scratch
ADD ./simple-http-time /http-time
ENTRYPOINT ["/http-time"]
