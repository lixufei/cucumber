CAPTURE_A_NUMBER = Transform /^\$(\d+)$/ do |digits|
  digits.to_i
end

Given /^my account has been credited (#{CAPTURE_A_NUMBER})$/ do |amount|
  my_account.credit(amount)
end

When /^I request (#{CAPTURE_A_NUMBER})$/ do |amount|
  teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_A_NUMBER}) should be dispensed$/ do |amount|
  cash_slot.contents.should == amount
end

And /^the balance of my account should be (#{CAPTURE_A_NUMBER})$/ do |amount|
  my_account.balance.should == amount
end