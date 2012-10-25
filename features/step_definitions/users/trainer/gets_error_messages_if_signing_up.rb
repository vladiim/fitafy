When /^I try creating an account incorrectly$/ do
  fill_in "user_username", with: @trainer.username
  fill_in "user_email",    with: "1"
  fill_in "user_password", with: "1"
  click_button "SIGN UP"
end

Then /^I should see the error messages$/ do
  page.should have_content "has already been taken"
  page.should have_content "should look like an email address."
  page.should have_content "is too short (minimum is 4 characters)"
end