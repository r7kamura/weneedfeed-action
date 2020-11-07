FROM ruby:2.6.6

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app

ENTRYPOINT ["rake", "build"]
