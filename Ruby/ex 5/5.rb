require 'json'

class JSONManipulator
  def initialize
    @data = {
      "name" => "Nicole Smith",
      "age" => 25,
      "salary" => 25552.67
    }
  end

  def save_to_json(file_name)
    File.open(file_name, "w") do |file|
      file.write(JSON.pretty_generate(@data))
    end
  end

  def read_and_update(file_name)
    loaded_data = JSON.parse(File.read(file_name))
    first_name, last_name = loaded_data["name"].split
    loaded_data["first_name"] = first_name
    loaded_data["last_name"] = last_name
    loaded_data.delete("name")
    loaded_data
  end

  def save_updated_to_json(data)
    timestamp = Time.now.utc.strftime("%Y-%m-%d_%H-%M-%S")
    new_file_name = "Madhura_#{timestamp}.json"
    
    File.open(new_file_name, "w") do |file|
      file.write(JSON.pretty_generate(data))
    end

    new_file_name
  end
end

  
manipulator = JSONManipulator.new


manipulator.save_to_json("data.json")


updated_data = manipulator.read_and_update("data.json")

new_file_name = manipulator.save_updated_to_json(updated_data)
puts "Updated data saved to #{new_file_name}"
