FROM golang:latest
RUN mkdir /app
ADD ./app /app
WORKDIR /app
RUN go mod download
RUN go install github.com/cosmtrek/air@latest
CMD air