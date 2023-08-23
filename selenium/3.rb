require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get 'https://www.saucedemo.com/v1/'

username = driver.find_element(:id, 'user-name') 
password = driver.find_element(:id, 'password')
find_button = driver.find_element(:id, 'login-button')

username.send_keys("standard_user")
password.send_keys("secret_sauce")
find_button.click

driver.quit









