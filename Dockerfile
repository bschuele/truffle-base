FROM node:12

RUN mkdir /truffle
WORKDIR /truffle

RUN npm install -g truffle

ENTRYPOINT ["node"]
