When /^I click on a workout$/ do
  click_link @workout.name
end

Then /^I see the visitor workout$/ do
  page.should have_content @workout.name.upcase
  within('li.workout_exercise > article > div.set_details') do
  	page.should_not have_content 'ADD SET'
  end
end