FROM ruby:2.3-alpine

MAINTAINER shogo noonarai@gmail.com

RUN apk add --no-cache alpine-sdk

RUN gem install rails --version "~>4.0" --no-ri --no-rdoc

WORKDIR /opt

ENTRYPOINT ["rails", "new", "-B"]
