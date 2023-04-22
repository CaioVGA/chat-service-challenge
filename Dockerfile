FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o app .

EXPOSE 80

CMD ["./app"]