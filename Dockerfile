FROM node:lts-alpine

RUN mkdir /truffle
WORKDIR /truffle

RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN apk add --update python3 krb5 krb5-libs gcc make g++ krb5-dev

RUN npm install pm2 -g
RUN npm install truffle -g
RUN npm install ganache-cli -g

CMD /bin/bash
