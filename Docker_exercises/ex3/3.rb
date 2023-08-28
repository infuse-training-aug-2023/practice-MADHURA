require 'test/unit'

class Calculator
  def add(a, b)
    a + b
  end
end

class TestCalculator < Test::Unit::TestCase
  def test_add
    calculator = Calculator.new
    result = calculator.add(2, 3)
    expected_result = 5 

    puts "Expected Result: #{expected_result}"
    puts "Actual Result: #{result}"

    assert_equal(expected_result, result)
  end
end
