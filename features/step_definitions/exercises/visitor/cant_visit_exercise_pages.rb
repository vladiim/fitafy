When /^I visit the new exercise path$/ do
  visit new_exercise_path
end

Then /^I should get an unauthorized message$/ do
  page.should have_content SnapzSayz::AuthSpeak.need_to_login
end