Given /^I have an account$/ do
  @trainer = FactoryGirl.create :trainer
end

Given /^I'm signed in$/ do
  visit root_path
  click_link "LOGIN"
  fill_in "user_session_email", 	with: @trainer.email
  fill_in "user_session_password",  with: "password"
  click_button "LOGIN"
end