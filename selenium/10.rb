require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get "https://computer-database.gatling.io/computers"
  
table = driver.find_element(:xpath, '//*[@id="main"]/table')  

column_index = 3 
   
rows = table.find_elements(:tag_name, 'tr')

rows.each do |row|

    columns = row.find_elements(:tag_name, 'td')
    
    if columns.size > column_index
      puts columns[column_index].text
    end

end 

driver.quit