#!/bin/sh -l

bundle exec --gemfile=/app/Gemfile weneedfeed build --base-url="$1" --schema-path="$2"
