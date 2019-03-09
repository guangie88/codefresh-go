FROM golang:1.12-alpine as base

WORKDIR /app
RUN apk add --no-cache gcc git musl-dev
COPY go.mod go.sum ./
RUN go mod download

COPY ./ ./

FROM base as build
RUN go build -v -ldflags "-linkmode external -extldflags -static -s -w"

FROM alpine:3.9 as release

WORKDIR /app
COPY --from=build /app/codefresh-go ./
CMD ["./codefresh-go"]

FROM base as test
RUN go test -v -c
