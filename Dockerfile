FROM node:12-alpine

RUN mkdir /truffle
WORKDIR /truffle

RUN npm install -g truffle

ENTRYPOINT ["node"]