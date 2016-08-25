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

