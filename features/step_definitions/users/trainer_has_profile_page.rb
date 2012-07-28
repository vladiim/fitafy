Given /^I'm signed in$/ do
  visit sign_up_url
  create_user
end

When /^I visit my profile page$/ do
  click_link @user.username.upcase
end

Then /^I should see my account details$/ do
  page.should have_content @user.username.upcase
end