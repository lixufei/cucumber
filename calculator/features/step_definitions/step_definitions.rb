Given /^the input "([^"]*)"$/ do |input|
  @input = input
end

When /^the calculator is run$/ do
  @output = `ruby cal.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then /^the output should be "([^"]*)"$/ do |expectedoutput|
  @output.should == expectedoutput
end

Given /the flight (\w+) is leaving today/ do |flight_number|
  #todo:
  @flight_number = flight_number
  puts @flight_number
end

When /I transfer \$(\d+) from my (\w+) Account into my (\w+) Account/ do |amount, account_type_from, account_type_to|
  @amount = amount
  @account_type_from = account_type_from
  @account_type_to = account_type_to
  puts @amount
  puts @account_type_from
  puts @account_type_to
end

Given /I have (\d+) cucumbers? in my basket/ do |count|
  @count = count
  puts @count
end

When /I (?:visit|go to) homepage/ do
  puts "homepage"
end

Given /^a board like this:$/ do |table|
  @table = table.raw
end

When /^player x plays in row (\d+), column (\d+)$/ do |row, col|
  row, col = row.to_i, col.to_i
  @table[row][col] = "x"
end

Then /^the board should look like this:$/ do |expected_table|
  expected_table.diff!(@table)
end