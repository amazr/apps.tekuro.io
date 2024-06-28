FROM golang:1.22.4-alpine
WORKDIR /app
COPY /src /app

RUN CGO_ENABLED=0 GOOS=linux go build -o app

EXPOSE 8080

CMD ["./app"]
