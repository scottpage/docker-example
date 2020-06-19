FROM node:latest AS build

LABEL maintainer="scottpageusmc@gmail.com"

WORKDIR /app

COPY ./package.json .
RUN npm install

ADD . .

RUN npm run build

CMD ["node", "dist/index.js"]
EXPOSE 30000
