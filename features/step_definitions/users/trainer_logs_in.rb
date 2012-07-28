Given /^I have an account$/ do
  create_user
end

Given /^I'm logged out$/ do
  click_link "LOGOUT"
end

When /^I log in$/ do
  login_user @user
end

Then /^I should see the logout link$/ do
  page.should have_content "LOGOUT"
end