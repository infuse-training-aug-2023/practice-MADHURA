require 'minitest/autorun'

class ArrayManipulator
    def element_at(arr, index)
      arr[index]
    end
  
    def inclusive_range(arr, start_pos, end_pos)
      arr[start_pos..end_pos]
    end
  
    def non_inclusive_range(arr, start_pos, end_pos)
      arr[start_pos...end_pos]
    end
  
    def start_and_length(arr, start_pos, length)
      arr[start_pos, length]
    end
  end
  
  input_array = [9, 5, 1, 2, 3, 4, 0, -1]
  input_index = 2
  input_start_pos = 5
  input_end_pos = 7
  
  manipulator = ArrayManipulator.new
  
  element_result = manipulator.element_at(input_array, input_index)
  puts "Element at index #{input_index}: #{element_result}"
  
  inclusive_result = manipulator.inclusive_range(input_array, input_start_pos, input_end_pos)
  puts "Inclusive range from #{input_start_pos} to #{input_end_pos}: #{inclusive_result}"
  
  non_inclusive_result = manipulator.non_inclusive_range(input_array, input_start_pos, input_end_pos)
  puts "Non-inclusive range from #{input_start_pos} to #{input_end_pos}: #{non_inclusive_result}"
  
  length = 3
  start_length_result = manipulator.start_and_length(input_array, input_start_pos, length)
  puts "Start at #{input_start_pos} with length #{length}: #{start_length_result}"
  
  class TestArrayManipulator < Minitest::Test
    def setup
      @manipulator = ArrayManipulator.new
      @input_array = [9, 5, 1, 2, 3, 4, 0, -1]
    end
  
    def test_element_at
      result = @manipulator.element_at(@input_array, 2)
      assert_equal(1, result)
    end
  
    def test_inclusive_range
      result = @manipulator.inclusive_range(@input_array, 1, 3)
      assert_equal([4, 0, -1], result)
    end
  
    def test_non_inclusive_range
      result = @manipulator.non_inclusive_range(@input_array, 1, 3)
      assert_equal([4, 0], result)
    end
  
    def test_start_and_length
      result = @manipulator.start_and_length(@input_array, 1, 3)
      assert_equal([4, 0, -1], result)
    end
  end
  
  Minitest.run