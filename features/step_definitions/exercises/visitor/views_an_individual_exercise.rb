Then /^I should see that exercise's details$/ do
  page.should have_css "h1", @exercise.name.capitalize
  page.should have_css "p",  @exercise.description.humanize
  page.should have_css "p",  @exercise.tips.humanize
  page.should have_css "p",  @exercise.muscle
  page.should have_css "p",  @exercise.category
  page.should have_css "p",  @exercise.equipment.name.humanize
end