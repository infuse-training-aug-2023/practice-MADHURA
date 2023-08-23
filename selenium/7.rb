require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\MADHURA\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://testpages.herokuapp.com/styled/basic-html-form-test.html"

dropdown = driver.find_element(name:'dropdown')

select = Selenium::WebDriver::Support::Select.new(dropdown)

select.select_by(:value, "dd2")

selected_option_value = select.selected_options[0].attribute('value')

puts "Selected option value: #{selected_option_value}"

driver.quit

