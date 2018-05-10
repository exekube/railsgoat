FROM ruby:2.5.1
RUN apt-get update -qq \
        && apt-get install -y \
                build-essential \
                libpq-dev \
                nodejs
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN RAILS_ENV=production bundle exec rake assets:precompile
