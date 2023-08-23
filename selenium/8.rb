require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\MADHURA\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get "https://www.globalsqa.com/demo-site/sliders/#Steps"

button = driver.find_element(:xpath, "//*[@id=\"slider\"]/span")
button.click

slider = driver.find_element(id: 'slider')

slider_width = slider.size.width
new_slider_position = 0.7

x_coordinate = slider.location.x + (slider_width * new_slider_position)

action_chains = driver.action
action_chains.click_and_hold(slider).move_by(x_coordinate, 0).release.perform

driver.quit
