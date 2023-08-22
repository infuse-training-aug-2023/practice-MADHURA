require 'test/unit'

def skip_sports(sports, skip)
	return sports[skip..-1] if skip >= 0
	return sports
end

class TestSkipSports < Test::Unit::TestCase
  def test_skip_sports
    array = ["cricket", "TT", "football", "hockey"]
    expected_output = ["football", "hockey"]
    assert_equal(expected_output, skip_sports(array, 2))
  end
end