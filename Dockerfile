FROM ruby:2.6.5

ENV NODE_VERSION=10.17.0

RUN apt-get update -qq && apt-get install -y \
  build-essential libpq-dev \
  postgresql-client

RUN curl -sSL "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" | tar xfJ - -C /usr/local --strip-components=1 && \
  npm install yarn -g

WORKDIR /app

ADD . /app

RUN gem install bundler

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
