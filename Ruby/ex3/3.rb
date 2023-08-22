require 'test/unit'

def hash_manipulator(hash)
	hash[543121] = "100"
	hash.each_key do |key|
		if key.is_a?(Integer)
			if key.even?
				hash.delete(key)
			end
		else
			hash.delete(key)
		end
	end
	return hash
end

class TestCheckHash < Test::Unit::TestCase
  def test_check_hash
    hash = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      "roll no" => "2",
      "marks" => "50",
    }
    expected_output = {
      1 => "one",
      3 => "three",
      5 => "five",
      543121 => "100"
    }
    assert_equal(expected_output, hash_manipulator(hash))
  end
end