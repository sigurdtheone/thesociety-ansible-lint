FROM alpine:latest

RUN apk update; apk add bash ansible py-pip gcc; pip2 install ansible-lint

WORKDIR /code

#cmd shopt -s globstar

cmd /usr/bin/ansible-lint **/*.yml
