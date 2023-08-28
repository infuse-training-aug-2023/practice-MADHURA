require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\MADHURA\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://www.google.com/"

title = driver.title

puts "Title is: #{title}"

driver.quit