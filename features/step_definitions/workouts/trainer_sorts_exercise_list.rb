Given /^there's exercises$/ do
  create_exercise exercise_type_attrs
end

Given /^I'm creating a new workout$/ do
  click_link "NEW WORKOUT"
end

When /^I click "(.*?)"$/ do |sort_by_link|
  click_link sort_by_link
end

Then /^the "(.*?)" tab should be active$/ do |sort_by_link|
  page.should have_css "p#workout_exercise_sort_by a.active", content: sort_by_link
end

Then /^I should see "(.*?)"$/ do |exercise_name|
  page.should have_content exercise_name
end

Then /^I shouldn't see "(.*?)"$/ do |exercise_name|
  page.should_not have_content exercise_name
end