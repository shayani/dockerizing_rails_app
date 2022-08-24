FROM ruby:2.7.6

WORKDIR /app

RUN apt-get update

COPY Gemfile Gemfile.lock ./
RUN bundle install

# Install NodeJS 14
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
