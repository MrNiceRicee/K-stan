FROM node:16-alpine

RUN mkdir -p /src/app

WORKDIR /src/app

COPY . /src/app/

RUN yarn install

EXPOSE 8000

CMD ["npm", "start"]