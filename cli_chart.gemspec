# frozen_string_literal: true

require "sorbet-runtime"

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cli_chart/version"

Gem::Specification.new do |spec|
  spec.name = "cli_chart"
  spec.version = CLIChart.gem_version
  spec.authors = ["Jared Beck"]
  spec.email = ["jared@jaredbeck.com"]
  spec.summary = "Command line (CLI) chart"
  spec.homepage = "https://github.com/jaredbeck/cli_chart"
  spec.files = [
    "lib/cli_chart.rb",
    "lib/cli_chart/version.rb",
    "cli_chart.gemspec"
  ]
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.6"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 0.73.0"
  spec.add_development_dependency "sorbet", "~> 0.4.4485"
  spec.add_development_dependency "sorbet-progress", "~> 0.2.3"
end
