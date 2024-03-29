#!/usr/bin/env bash

set -e

bundle exec srb tc --metrics-file /tmp/sorbet_metrics.json
bundle exec sorbet_progress /tmp/sorbet_metrics.json
bundle exec rubocop
bundle exec ruby -I lib:test -r 'minitest/autorun' test/all.rb
