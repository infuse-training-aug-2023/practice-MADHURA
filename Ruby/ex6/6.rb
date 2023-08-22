require 'base64'
require 'test/unit'

class Base64FileHandler
  def initialize
    @file_content = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ \"the string that will be base encoded\"]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
  end

  def write_to_file(file_name)
    File.open(file_name, 'w') do |file|
      file.write(@file_content)
    end
  end

  def read_and_encode(file_name)
    content = File.read(file_name)
    encoded_content = ""
    bracket = false
    bracket_content = ""
  
    content.each_char do |char|
      if char == '['
        bracket = true
        bracket_content = ""
      elsif char == ']'
        bracket = false
        base64_encoded = Base64.encode64(bracket_content.strip).chomp
        encoded_content += "[#{base64_encoded}]"
      elsif bracket
        bracket_content += char
      else
        encoded_content += char
      end
    end
  
    encoded_content
  end
  
  def save_encoded_to_file(encoded_content, new_file_name)
    File.open(new_file_name, 'w') do |file|
      file.write(encoded_content)
    end
  end
end

class TestBase64FileHandler < Test::Unit::TestCase
  def setup
    @file_handler = Base64FileHandler.new
  end

  def test_read_and_encode
    temp_file_name = "temp_test_file.txt"
    @file_handler.write_to_file(temp_file_name)

    encoded_content = @file_handler.read_and_encode(temp_file_name)

    assert_not_nil(encoded_content)

    File.delete(temp_file_name) if File.exist?(temp_file_name)
  end
end

file_handler = Base64FileHandler.new

file_handler.write_to_file('file_content.txt')

encoded_content = file_handler.read_and_encode('file_content.txt')
file_handler.save_encoded_to_file(encoded_content, 'Madhura.txt')  
puts "Encoded content saved to Madhura.txt"
