FROM ruby:2.4-alpine

MAINTAINER shogo noonarai@gmail.com

RUN apk add --no-cache alpine-sdk

RUN gem install rails --version "~>5.0" --no-ri --no-rdoc

WORKDIR /opt

ENTRYPOINT ["rails", "new", "-B"]
