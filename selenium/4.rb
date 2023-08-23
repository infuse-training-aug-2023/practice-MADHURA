require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\MADHURA\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://demo.automationtesting.in/Register.html"

check_box = driver.find_element(id:"checkbox2")
radio_button = driver.find_element(css: "input[type='radio'][name='radiooptions'][value='FeMale']")

unless check_box.selected?
    check_box.click 
  end

unless radio_button.selected?
    radio_button.click 
end


driver.quit



