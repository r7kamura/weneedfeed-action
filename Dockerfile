FROM ruby:2.6.6

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]
