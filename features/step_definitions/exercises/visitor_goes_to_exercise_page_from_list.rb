Given /^there are exercises and I go to the exercise list$/ do
  create_exercise
  visit exercises_path
end

When /^I click on an exercise$/ do
  click_link "Liquid Swords"
end

Then /^I should be on the exercise's show page$/ do
  page.should have_css "h1", content: "Liquid Swords"
end