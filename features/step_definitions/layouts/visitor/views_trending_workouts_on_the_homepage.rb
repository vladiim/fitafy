Given /^I need incentive to click on$/ do
  5.times { FactoryGirl.create :workout }
end

When /^I visit the homepage \(trend\)$/ do
  visit root_path
end

Then /^I should see trending workouts$/ do
  page.should have_content "TRENDING WORKOUTS"
  page.should have_content "No Said Date"
end