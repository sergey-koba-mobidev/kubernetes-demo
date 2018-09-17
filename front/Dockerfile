FROM node:9-alpine

ENV WEB_ROOT /web
RUN mkdir $WEB_ROOT
WORKDIR $WEB_ROOT

COPY . /web

RUN yarn install

EXPOSE 80
