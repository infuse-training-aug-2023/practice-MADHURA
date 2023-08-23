require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\USER\Desktop\Desktop\Git training\selenium\drivers\chromedriver.exe'
driver= Selenium::WebDriver.for :chrome

driver.get 'https://the-internet.herokuapp.com/tables'  
  
table = driver.find_element(:id, 'table1')  
row_index = 2    
column_index = 3 

rows = table.find_elements(:tag_name, 'tr')
if row_index < rows.size
    row = rows[row_index]
    
    cells = row.find_elements(:tag_name, 'td')
    
    if column_index < cells.size
      cell_value = cells[column_index].text
      puts "Value of cell at Row #{row_index}, Column #{column_index}: #{cell_value}"
    
    end
  
end

driver.quit
  
