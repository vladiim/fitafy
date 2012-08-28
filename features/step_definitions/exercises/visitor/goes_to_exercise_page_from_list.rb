Given /^I'm on the exercises page$/ do
  visit exercises_path
end

When /^I click on an exercise$/ do
  click_link "Liquid"
end

Then /^I should be on the exercise's show page$/ do
  page.should have_css "h1", content: "Liquid Swords"
end