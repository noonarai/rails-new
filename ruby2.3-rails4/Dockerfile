FROM ruby:2.3-alpine

RUN apk add --no-cache \
  alpine-sdk \
  nodejs \
  mariadb-dev \
  sqlite-dev \
  postgresql-dev

RUN gem install rails --version "~>4.0" --no-ri --no-rdoc

WORKDIR /opt

ENTRYPOINT ["rails", "new"]

CMD ["-h"]
