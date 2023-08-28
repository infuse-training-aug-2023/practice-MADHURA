require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\madhura.patil\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://letcode.in/forms"

dropdown = driver.find_element(:xpath, "/html/body/app-root/app-forms/section[1]/div/div/div[1]/div/div/form/div[5]/div[2]/div/div/div/select")

select = Selenium::WebDriver::Support::Select.new(dropdown)

# puts dropdown.text

options = select.options

options.each do |option|
  puts option.text
end

dropdown.click 
  
driver.quit


