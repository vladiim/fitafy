Given /^I'm on an exsisting exercise's edit page$/ do
  create_exercise
  click_link "Edit Exercise"
end

When /^I change the exercise's "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, with: value
  click_button "Update Exercise"
end

Then /^I should see the "(.*?)" on the exercise's page$/ do |value|
  page.should have_content value
end

Then /^Snapz should say "(.*?)" to let me know I've updated the exercise$/ do |snapz_says|
  page.should have_content snapz_says
end