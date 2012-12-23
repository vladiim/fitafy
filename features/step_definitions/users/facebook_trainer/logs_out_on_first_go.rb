When /^I click logout$/ do
  click_link "LOGOUT"
end

Then /^I shouldn't be logged in anymore$/ do
  page.should have_content "SIGN UP"
  page.should have_content "LOGIN"
end