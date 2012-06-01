Given /^there are more than one exercise$/ do
  @second_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @second_exercise.update_attributes(name: "BBBB")

  @first_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @first_exercise.update_attributes(name: "AAAAA")
end

When /^I visit the exercise list$/ do
  visit exercises_path
end

Then /^the exercises should be in alphabetical order$/ do
  page.should have_selector("section article:nth-child(1) header h3", content: "AAAAA")
  page.should have_selector("section article:nth-child(2) header h3", content: "BBBB")
end