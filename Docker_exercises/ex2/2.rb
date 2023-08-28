require 'json'
require 'faker'

if ARGV.length < 2
  puts "Use ruby 2.rb <num_records> <output_file>"
  exit(1)
end

num_records = ARGV[0].to_i
output_file = ARGV[1]

country = ENV['COUNTRY']

data = []
num_records.times do
  data << {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    country: country
  }
end

json_data = JSON.pretty_generate(data)

puts json_data

File.open(output_file, 'w') do |file|
  file.write(json_data)
end

puts "#{num_records} records generated and saved to #{output_file}"
