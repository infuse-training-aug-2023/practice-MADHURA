require 'minitest/autorun'

def calculate_serial_average(serial_input)
    number = serial_input.split('-')
    xx = number[1].to_f
    yy = number[2].to_f
    average = (xx + yy) / 2
    formatted_average = format('%.2f', average)
    "#{number[0]}-#{formatted_average}"
end

class TestSerialAverage < Minitest::Test
    def test_calculate_serial_average
        assert_equal "100-15.00", calculate_serial_average("100-10.00-20.00")
        
    end
end

serial_input= "200-10.00-20.00"
result = calculate_serial_average(serial_input)
puts result
