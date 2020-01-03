FROM node:13.3-alpine as node

FROM ruby:2.6-alpine

ENV LANG C.UTF-8

RUN apk add --no-cache \
  alpine-sdk \
  postgresql-dev \
  tzdata

COPY --from=node /opt/yarn-v* /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/

RUN ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \
    && ln -s /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg

WORKDIR /opt

ENTRYPOINT ["rails", "new"]

CMD ["-h"]
