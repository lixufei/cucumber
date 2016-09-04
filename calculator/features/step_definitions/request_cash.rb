CAPTURE_A_NUMBER = Transform /^\$(\d+)$/ do |digits|
  digits.to_i
end

Given /^I have deposited (#{CAPTURE_A_NUMBER}) in my account$/ do |amount|
  my_account.deposit(amount)
  puts amount
  my_account.balance.should eq(amount)
end

When /^I request (#{CAPTURE_A_NUMBER})$/ do |amount|
  teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_A_NUMBER}) should be dispensed$/ do |amount|
  cash_slot.contents.should == amount
end