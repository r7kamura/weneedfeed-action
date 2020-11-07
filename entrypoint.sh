#!/bin/sh -l

BUNDLE_GEMFILE=/app/Gemfile bundle exec rake --rakefile /app/Rakefile build[$1,$2]
