Given /^I find an exercise$/ do
  #
end

When /^I visit the exercise's page$/ do
  visit exercise_path @exercise
end

Then /^I should see that exercise's details$/ do
  page.should have_css "h1", @exercise.name.capitalize
  page.should have_css "p",  @exercise.description.humanize
  page.should have_css "p",  @exercise.tips.humanize
  page.should have_css "p",  @exercise.muscles.each { |muscles| muscles.name.humanize }
  page.should have_css "p",  @exercise.equipment.name.humanize
end