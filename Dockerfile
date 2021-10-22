FROM golang:1.12.0-alpine3.9 AS build

WORKDIR /app
RUN mkdir app
COPY ./app .

CMD [ "./app" ]
