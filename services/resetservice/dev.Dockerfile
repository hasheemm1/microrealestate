FROM node:16-slim

WORKDIR /usr/app

COPY package.json .
COPY yarn.lock .
COPY services/common services/common
COPY services/resetservice services/resetservice

RUN yarn workspace resetservice install --network-timeout 1000000

CMD yarn workspace resetservice run dev