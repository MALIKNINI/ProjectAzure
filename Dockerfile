FROM node:14.17.3-buster

WORKDIR /reactapp

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install -g

COPY . .

CMD ["npm","run","start"]