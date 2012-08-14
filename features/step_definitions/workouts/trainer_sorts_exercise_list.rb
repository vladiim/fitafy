Given /^there's exercises$/ do
  Exercise::EXERCISE_TYPES.each do |type|
  	FactoryGirl.create :exercise, name: "#{type} title", categories: type
  end
end

Given /^I'm creating a new workout$/ do
  click_link "NEW WORKOUT"
end

# see features/step_definition/exercises/sort_by_tab.rb