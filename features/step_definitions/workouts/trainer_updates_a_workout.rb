Given /^I'm on an exsisting workout's edit page$/ do
  create_workout
  click_link "EDIT WORKOUT"
end

When /^I change the workout's "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, with: value
  save_and_open_page
  click_button "UPDATE WORKOUT"
end

Then /^Snapz should say "(.*?)" to let me know I've updated the workout$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end

Then /^I should see "(.*?)" on the workouts's page$/ do |updated_attr|
  page.should have_content updated_attr
end