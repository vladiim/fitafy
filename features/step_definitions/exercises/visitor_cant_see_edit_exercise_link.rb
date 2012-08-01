When /^I visit an exercise's page$/ do
  create_exercise
  click_link "LOGOUT"
  ex = Exercise.first
  visit exercise_path(ex)
end

Then /^I should not see the edit exercise link$/ do
  page.should_not have_content "EDIT EXERCISE"
end