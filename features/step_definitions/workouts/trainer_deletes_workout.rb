Given /^There's a workout$/ do
  create_workout
  click_link "EDIT WORKOUT"
end

When /^I delete the workout by clicking "(.*?)"$/ do |delete_workout_link|
  click_link delete_workout_link
end

Then /^Snapz should give the "(.*?)" deleted workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end