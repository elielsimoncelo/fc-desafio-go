FROM golang:1.18-alpine as builder

WORKDIR /go/src/hello
COPY hello.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /go/build/hello hello.go

FROM scratch

WORKDIR /app
COPY --from=builder /go/build/hello /app/hello
CMD [ "./hello" ]
