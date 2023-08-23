require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'

driver= Selenium::WebDriver.for :chrome

driver.get "https://www.google.com/"

driver.manage.window.maximize

driver.quit