FROM node:17-alpine3.12

COPY package.json .

COPY yarn.lock .

RUN yarn

COPY . .

CMD yarn start