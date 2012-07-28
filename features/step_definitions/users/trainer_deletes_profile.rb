Given /^on my profile page$/ do
  click_link @user.username.upcase
end

When /^I click delete account$/ do
  click_link "DELETE ACCOUNT"
end

Then /^my account will be permanantly deleted$/ do
  User.find_by_username(@user.username).should_not be
end