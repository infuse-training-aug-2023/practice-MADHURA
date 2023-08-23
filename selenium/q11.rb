require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 20)

begin
  driver.get 'https://example.com'  # Replace with the URL of your web page
  
  # Find the table element (assuming it has a unique identifier)
  table = driver.find_element(:id, 'table_id')  # Replace 'table_id' with the actual ID
  
  target_row = 1    # Row index (0-based)
  target_column = 2 # Column index (0-based)

  # Find all rows in the table
  rows = table.find_elements(:tag_name, 'tr')
  
  if target_row < rows.size
    row = rows[target_row]
    
    # Find all cells in the row
    cells = row.find_elements(:tag_name, 'td')
    
    if target_column < cells.size
      cell_value = cells[target_column].text
      puts "Value of cell at Row #{target_row}, Column #{target_column}: #{cell_value}"
    else
      puts "Column index #{target_column} out of range."
    end
  else
    puts "Row index #{target_row} out of range."
  end
rescue StandardError => e
  puts "An error occurred: #{e.message}"
ensure
  driver.quit
end
