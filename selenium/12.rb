require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get 'https://www.saucedemo.com/v1/'

driver.manage.window.maximize

username = driver.find_element(:id, 'user-name') 
password = driver.find_element(:id, 'password')
find_button = driver.find_element(:id, 'login-button')

username.send_keys("standard_user")
password.send_keys("secret_sauce")
find_button.click

dropdown = driver.find_element(:xpath,'//*[@id="inventory_filter_container"]/select')

select = Selenium::WebDriver::Support::Select.new(dropdown)

select.select_by(:value, "za")

add_to_cart = driver.find_element(:xpath, '//*[@id="inventory_container"]/div/div[4]/div[3]/button')
add_to_cart.click

cart = driver.find_element(:id,'shopping_cart_container')
cart.click

checkout= driver.find_element(:xpath,'//*[@id="cart_contents_container"]/div/div[2]/a[2]')
checkout.click

driver.quit









