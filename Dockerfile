FROM node:20.15

LABEL authors="m1chendi"

RUN mkdir -p /app

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE 3000

CMD [ "node", "index.js" ]
