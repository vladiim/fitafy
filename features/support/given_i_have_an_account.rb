Given /^I have an account$/ do
  @user = FactoryGirl.create :trainer
end

Given /^I'm sigen in$/ do
  visit root_path
  click_link "LOGIN"
  fill_in "user_session_email", 	with: "tical@wu.com"
  fill_in "user_session_password",  with: "password"
  click_button "LOGIN"
end