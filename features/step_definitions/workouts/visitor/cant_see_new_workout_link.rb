Given /^I'm a visitor$/ do
  #
end

When /^I visit the homepage$/ do
  visit root_path
end

Then /^I should see the new workout link$/ do
  page.should_not have_content "NEW WORKOUT"
end