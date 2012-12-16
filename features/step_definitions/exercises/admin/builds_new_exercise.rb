Given /^I want to create a new exercise$/ do
  visit root_path
end

When /^I click the "(.*?)" new exercise link$/ do |new_exercise|
  click_link new_exercise
end

Then /^Snapz should say "(.*?)" because I'm on a new exercise page$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end