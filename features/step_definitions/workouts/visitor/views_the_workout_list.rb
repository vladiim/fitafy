When /^I click on the workout's link "(.*?)"$/ do |workout_link|
  click_link workout_link
end

Then /^I should see a list of workouts$/ do
  page.should have_css "a", content: "Zno Said Date"
end

Then /^I should see how many exercises the workout has$/ do
  page.should have_content "EXERCISES: 1"
end