FROM node:latest AS build

LABEL maintainer="scottpageusmc@gmail.com"

RUN ["npm", "install"]

WORKDIR /app

COPY ./package.json /app/package.json
COPY ./tsconfig.json /app/tsconfig.json
COPY ./index.ts /app/src

RUN tsc

FROM build
CMD ["node", "dist/index.js"]
