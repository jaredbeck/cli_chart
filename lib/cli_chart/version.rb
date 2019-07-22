# typed: true
# frozen_string_literal: true

# :nodoc:
module CLIChart
  extend T::Sig

  sig { returns(Gem::Version) }
  def self.gem_version
    Gem::Version.new("0.1.0")
  end
end
