Given /^I'm on the edit exercise page$/ do
  @exercise = FactoryGirl.create :exercise
  visit edit_exercise_path(@exercise)
end

When /^I delete the exercise by clicking "(.*?)"$/ do |delete_exercise|
  click_button delete_exercise
end

Then /^Snapz should give "(.*?)" deleted exercise message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end