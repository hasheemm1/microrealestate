FROM node:16-slim

WORKDIR /usr/app

COPY package.json .
COPY yarn.lock .
COPY services/common services/common
COPY services/authenticator services/authenticator

RUN yarn workspace authenticator install --network-timeout 1000000

CMD yarn workspace authenticator run dev