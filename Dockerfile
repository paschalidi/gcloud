FROM node:10

WORKDIR /user/serc/app

ENV PORT 8080
ENV HOST 0.0.0.0

COPY package.json ./

RUN npm ci

COPY . .

RUN npm run build
RUN npm start
