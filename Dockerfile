FROM ruby:alpine

RUN apk add --no-cache alpine-sdk

RUN gem install rails
