require "test_helper"

class CLIChartTest < Minitest::Test
  def test_that_it_has_a_version_number
    assert_instance_of Gem::Version, CLIChart.gem_version
  end
end
