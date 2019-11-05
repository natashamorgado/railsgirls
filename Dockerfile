FROM ruby:2.6

ENV RAILS_VERSION 6.0.1

# see update.sh for why all "apt-get install"s have to stay as one long line
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs ghostscript sqlite3
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs
RUN node -v && npm -v

RUN npm install -g yarn

RUN gem install rails --version "$RAILS_VERSION" && rails new railsgirls
