FROM mcr.microsoft.com/windows/servercore:ltsc2022

WORKDIR /usr/src/app

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE $PORT

CMD /usr/src/app/node_modules/.bin/ng serve --host 0.0.0.0