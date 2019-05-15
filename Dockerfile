FROM alpine:latest

RUN apk update; apk add bash ansible py-pip gcc python2-dev; pip2 install ansible-lint

WORKDIR /code

#cmd shopt -s globstar

cmd /usr/bin/ansible-lint **/*.yml
