When /^I visit the list of workouts$/ do
  click_link "Workouts"
end

Then /^I can click on the workout "(.*?)"$/ do |workout_link|
  click_link workout_link
end

Then /^I will be on that workout's page$/ do
  page.should have_css("h1", content: "No Said Date")
end