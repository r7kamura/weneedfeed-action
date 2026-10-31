FROM ruby:3.4

ENV BUNDLE_GEMFILE=/app/Gemfile
# weneedfeed 0.21.0 uses URI without requiring it.
ENV RUBYOPT=-ruri

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]
