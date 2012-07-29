When /^I try to visit "(.*?)"$/ do |exercise_link|
  create_exercise
  visit exercise_link
end

Then /^I should get an unauthorized message$/ do
  page.should have_content "Sorry d00d I can't show you that page!"
end