When /^I log in$/ do
  fill_in "user_session_email",    with: @active_trainer.email
  fill_in "user_session_password", with: "password"
  click_button "LOGIN"
end