Given /^I'm not logged in$/ do
  click_link "LOGOUT"
end

When /^I click sign up$/ do
  click_link 'SIGN UP'
end

When /^fill in my details$/ do
  fill_in "user_username", with: "rza"
  fill_in "user_email", with: "bobby@bolders.com"
  fill_in "user_password", with: "password"
  fill_in "user_password_confirmation", with: "password"
  click_button "SIGN UP"
end

Then /^I should have a new account$/ do
  user = User.last
  user.username.should match "rza"
  user.email.should match "bobby@bolders.com"
end

Then /^Snapz should have a message for creating an account$/ do
  page.should have_content "Yea, yea, yea! Welcome to the fitification!"
end