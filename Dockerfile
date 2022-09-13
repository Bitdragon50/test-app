FROM node:alpine

ENV PORT 8080

ENV HOST 0.0.0.0

WORKDIR /usr/src/app

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["/usr/src/app/node_modules/.bin/", "ng serve "]