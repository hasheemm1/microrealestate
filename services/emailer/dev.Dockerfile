FROM node:16-slim

WORKDIR /usr/app

COPY package.json .
COPY yarn.lock .
COPY services/common services/common
COPY services/emailer services/emailer

RUN yarn workspace emailer install --network-timeout 1000000

CMD yarn workspace emailer run dev