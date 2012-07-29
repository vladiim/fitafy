When /^I try to create a new workout$/ do
  visit new_workout_path
end

Then /^I get redirected to the homepage$/ do
  current_path.should eq root_path
end

Then /^I get a unauthorized message from snapz$/ do
  page.should have_content "Sorry d00d"
end