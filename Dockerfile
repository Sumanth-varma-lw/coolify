FROM node:10-alpine

RUN mkdir /app

ADD . /app

COPY package.json ./

RUN npm install

EXPOSE 3000

CMD [ "node", "server.js" ]