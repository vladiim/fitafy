Given /^I'm on the workouts page$/ do
  visit workouts_path
end

When /^I click the fitafy logo$/ do
  click_link 'fitafy_logo'
end

Then /^I should be on the homepage$/ do
  current_path.should eq root_path
end