FROM golang:1.7
ADD ./time.go /go/src/github.com/ethernetdan/simple-time-server/time.go
RUN go install github.com/ethernetdan/simple-time-server
ENTRYPOINT ["/go/bin/simple-time-server"]
