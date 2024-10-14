FROM ruby:3.2.4-bullseye

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /myapp

COPY Gemfile Gemfile.lock ./
RUN bundle install -j4

COPY . .
