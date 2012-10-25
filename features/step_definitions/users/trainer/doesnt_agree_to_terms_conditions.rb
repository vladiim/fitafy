When /^I fill in all details other than T&Cs$/ do
  fill_in "user_username", with: "60 sec"
  fill_in "user_email", with: "shahim@wu.com"
  fill_in "user_password", with: "password"
  fill_in "user_password_confirmation", with: "password"
  click_link "SIGN UP"
end

Then /^I should see a T&Cs error$/ do
  page.should have_content SnapzSayz::UserSpeak.require_terms_conditions
end