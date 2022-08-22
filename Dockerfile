FROM ruby:2.7.6

WORKDIR /app

RUN apt-get update

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY package.json yarn.lock ./
RUN yarn install

CMD ["bundle", "exec", "rails", "server"]
