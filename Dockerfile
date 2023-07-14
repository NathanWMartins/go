FROM golang:1.20 AS builder

WORKDIR /app

COPY go.mod .
COPY main.go .

RUN go build -o server .

ENTRYPOINT [ "/app/server" ]
