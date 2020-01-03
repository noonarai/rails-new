FROM node:13.3-alpine as node

FROM ruby:2.6-alpine

ENV LANG C.UTF-8

RUN apk add --no-cache \
  alpine-sdk \
  postgresql-dev \
  tzdata

ENV ENTRYKIT_VERSION 0.4.0

RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
    && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
    && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
    && mv entrykit /bin/entrykit \
    && chmod +x /bin/entrykit \
    && entrykit --symlink

COPY --from=node /opt/yarn-v* /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/

RUN ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \
    && ln -s /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg

WORKDIR /opt

RUN gem install rails --version "~>6.0"

ENTRYPOINT ["rails", "new"]

CMD ["-h"]
