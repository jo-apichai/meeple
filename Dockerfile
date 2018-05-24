FROM ruby:2.5.1

RUN apt-get update && apt-get install -y apt-transport-https

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y \
  nodejs \
  yarn

RUN mkdir /merry_meeple

WORKDIR /merry_meeple

COPY Gemfile Gemfile.lock /merry_meeple/
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY package.json yarn.lock /merry_meeple/
RUN yarn install

COPY . /merry_meeple/

EXPOSE 3000
