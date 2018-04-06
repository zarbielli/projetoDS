FROM ruby:2.4.4-jessie

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /conexao_doadores
WORKDIR /conexao_doadores
COPY $PWD/conexao_doadores/Gemfile /conexao_doadores/Gemfile
COPY $PWD/conexao_doadores/Gemfile.lock /conexao_doadores/Gemfile.lock
RUN bundle install
COPY $PWD/conexao_doadores/ /conexao_doadores
