FROM ruby:2.4.4-jessie

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app

ADD . /app

COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD ./docker/database.yml /app/config/database.yml

CMD ["bundle", "exec", "rails", "server"]