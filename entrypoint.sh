#!/bin/sh -l

bundle exec weneedfeed build --base-url="$1" --schema-path="$2"
