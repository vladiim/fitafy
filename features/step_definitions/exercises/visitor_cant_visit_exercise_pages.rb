When /^I visit the new exercise path$/ do
  visit new_exercise_path
end

Then /^I should get an unauthorized message$/ do
  page.should have_content "Sorry d00d I can't show you that page!"
end