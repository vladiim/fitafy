Given /^I'm on a new exercise page$/ do
  visit new_exercise_path
end

When /^I fill in the exercise form$/ do
  fill_in "exercise_name", with: "liquid swords"
  fill_in "exercise_description", with: "wu gambinos"
  fill_in "exercise_tips", with: "protect yo neck"
  fill_in "exercise_category_list", with: "shoalin back sword style"
  fill_in "exercise_equipment_list", with: "bobby boulders"
  click_button "CREATE EXERCISE"
end

Then /^Snapz should give the created exercise message "(.*?)"$/ do |snapz_message|
  page.should have_content snapz_message
end