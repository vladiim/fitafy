Given /^an exercise has been created$/ do
  @exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
end

When /^I visit the exercise's page$/ do
  visit exercise_path @exercise
end

Then /^I should see that exercise's details$/ do
  attributes = %w[name description tips categories equipment]
  attributes.each do |attribute|
  	page.should have_content @exercise.send attribute
  end
end