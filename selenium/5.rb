require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\MADHURA\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://www.google.com/"

search_id= "APjFqb"

find_button= driver.find_element(:xpath, "/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]")

search = driver.find_element(:id, search_id)

search.send_keys("hello")

find_button.click

driver.quit









