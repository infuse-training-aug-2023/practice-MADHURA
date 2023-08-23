require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome


driver.get "https://cosmocode.io/automation-practice-webtable/"

table_header= driver.find_elements(:tag_name, 'h3')

puts "table headers are-"

table_header.each do |table_header|
    puts table_header.text
end

driver.quit