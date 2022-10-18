FROM alpine:3.14

copy create-id-rsa.sh ./

RUN apk update \
&& apk add --no-cache git \
&& git --version \
&& apk add --no-cache openssh-client \
&& mkdir ~/.ssh \
&& ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts \
&& git config --global user.name "usergithub" \
&& git config --global user.email "usergithub@dominio.com"

