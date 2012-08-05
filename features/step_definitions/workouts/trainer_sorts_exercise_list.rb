Given /^there's exercises$/ do
  Exercise::EXERCISE_TYPES.each do |type|
  	FactoryGirl.create :exercise, name: "#{type} title"
  end
end

Given /^I'm creating a new workout$/ do
  trainer = FactoryGirl.create :trainer
  login trainer
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