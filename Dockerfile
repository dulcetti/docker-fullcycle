FROM golang:1.12.0-alpine3.9 AS build

WORKDIR /my-hello
RUN mkdir my-hello
COPY dulcetti.go /my-hello

RUN cd /my-hello
RUN go build dulcetti.go 

FROM scratch
COPY --from=build /my-hello/dulcetti /my-hello/

CMD [ "/my-hello/dulcetti" ]
