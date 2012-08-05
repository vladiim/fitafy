Given /^on my profile page$/ do
  click_link @trainer.username.upcase
end

When /^I click delete account$/ do
  click_link "DELETE ACCOUNT"
end

Then /^my account will be permanantly deleted$/ do
  User.find_by_username(@trainer.username).should_not be
end