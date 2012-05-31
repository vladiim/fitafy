Given /^there are more than one exercise$/ do
  @second_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @second_exercise.update_attributes(name: "BBBB")

  @first_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @first_exercise.update_attributesc(name: "AAAAA")
end

When /^I visit the exercise list$/ do
  visit exercises_path
end

Then /^the exercises should be in alphabetical order$/ do
  response.body.should =~ /#{@first_exercise.name}.*#{@second_exercise.name}/m
end