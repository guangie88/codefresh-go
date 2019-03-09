FROM golang:1.12-alpine as builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY ./ ./
RUN go build -v -ldflags "-linkmode external -extldflags -static -s -w"

FROM alpine:3

WORKDIR /app
COPY --from=builder /app/codefresh-go ./
CMD ["./codefresh-go"]
