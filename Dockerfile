FROM golang:1.20 as builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download 

COPY *.go .

RUN go build -o badyet-tracker

FROM alpine:latest

WORKDIR /root/app

COPY --from=builder /app/badyet-tracker .

EXPOSE 8080

CMD ["./badyet-tracker"]