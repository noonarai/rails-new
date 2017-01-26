FROM ruby:alpine

MAINTAINER shogo noonarai@gmail.com

RUN apk add --no-cache alpine-sdk

RUN gem install rails --no-ri --no-rdoc

WORKDIR /opt

ENTRYPOINT ["rails", "new", "-B"]
