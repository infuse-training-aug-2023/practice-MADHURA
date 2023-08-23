require 'selenium-webdriver'

# Create a WebDriver instance (in this case, using Chrome)
driver = Selenium::WebDriver.for :chrome

# Navigate to a webpage with a dropdown
url = 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'
driver.get(url)

# Find the dropdown element by its name attribute
dropdown = driver.find_element(name: 'dropdown') # Replace 'dropdown_name' with the actual name attribute of the dropdown

# Create a Select object from the dropdown element
select = Selenium::WebDriver::Support::Select.new(dropdown)

# Select the i-th option (0-based index)
i = 2 Replace with the desired index
select.select_by(:index, i)

# Get the selected option's value
selected_option_value = select.selected_options[0].attribute('value')

# Print the selected option's value
puts "Selected option value: #{selected_option_value}"

# Close the WebDriver
driver.quit
