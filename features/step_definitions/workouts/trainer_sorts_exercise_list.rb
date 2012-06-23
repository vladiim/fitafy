Given /^there's exercises$/ do
  create_exercise exercise_type_attrs
end

Given /^I'm creating a new workout$/ do
  click_link "NEW WORKOUT"
end

When /^I click "(.*?)"$/ do |chest_sort|
  click_link chest_sort
end

Then /^I should see "(.*?)"$/ do |chest_title|
  page.should have_content chest_title
end

Then /^I shouldn't see "(.*?)"$/ do |back_title|
  page.should_not have_content back_title
end