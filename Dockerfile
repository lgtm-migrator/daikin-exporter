FROM node:15.4.0-alpine3.10

COPY package.json package-lock.json /app/

WORKDIR /app

RUN npm ci

COPY . /app/

RUN npm run build

CMD npm start
