Given /^I'm on the edit workout page$/ do
  create_workout
  click_link "Edit Workout"
end

When /^I delete the workout by clicking "(.*?)"$/ do |delete_workout_link|
  click_button delete_workout_link
end

Then /^Snapz should give the "(.*?)" deleted workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end