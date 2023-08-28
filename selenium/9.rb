require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\madhura.patil\Desktop\Git training\selenium\drivers\chromedriver.exe'
 
driver = Selenium::WebDriver.for :chrome

driver.get 'https://cosmocode.io/automation-practice-webtable/'

header_row = driver.find_element(tag_name: 'tr')

header_cells = header_row.find_elements(tag_name: 'td')

 header_cells.each do |header_cell|

  table_header = header_cell.find_element(tag_name: 'strong').text

  puts table_header

end

driver.quit