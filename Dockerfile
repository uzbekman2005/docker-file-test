FROM golang:1.19.1-alpine3.16

RUN mkdir app

COPY . /app

WORKDIR /app

RUN go build -o main main.go

CMD ["/app/main"]

EXPOSE 8080