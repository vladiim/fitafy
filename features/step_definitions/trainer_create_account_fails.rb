Given /^I've filled my sign up details wrong$/ do
  visit sign_up_url
end

When /^I try to sign up$/ do
  click_sign_up
end

Then /^I should get a sign up fail message$/ do
  page.should have_content "is too short (minimum is 3 characters)"
  page.should have_content "should look like an email address."
  page.should have_content "is too short (minimum is 4 characters)"
end