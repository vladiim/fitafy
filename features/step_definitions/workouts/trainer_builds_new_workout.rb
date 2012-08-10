Given /^I want to create a new workout$/ do
  visit root_path
end

When /^I click the "(.*?)" new workout link$/ do |new_workout_link|
  click_link new_workout_link
end

Then /^Snapz should say "(.*?)" because I'm on a new workout page$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end