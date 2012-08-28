When /^I visit an exercise's page$/ do
  FactoryGirl.create :exercise
  exercise = Exercise.last
  visit exercise_path(exercise)
end

Then /^I should not see the edit exercise link$/ do
  page.should_not have_content "EDIT EXERCISE"
end