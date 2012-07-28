Given /^I want to create a new fitafy account$/ do
  visit root_path
end

When /^I click sign up$/ do
  click_link 'SIGN UP'
end

When /^fill in my details$/ do
  create_user
end

Then /^I should have a new account$/ do
  @user.username.should match "rza"
  @user.email.should match "@wu.com"
end

Then /^Snapz should have a message for creating an account$/ do
  page.should have_content "Yea, yea, yea! Welcome to the fitification!"
end