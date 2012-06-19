Given /^there are more than one exercise$/ do
  @second_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @second_exercise.update_attributes(name: "BBBB")

  @first_exercise = Exercise.create!(CreateExercise::EXERCISE_ATTRIBUTES)
  @first_exercise.update_attributes(name: "AAAA")
end

When /^I visit the exercise list$/ do
  visit root_path
  click_link "Exercises"
end

Then /^the exercises should be in alphabetical order$/ do
  page.should have_selector("ul#exercise_list li#box_list:nth-child(1) article a", content: "Aaaa")
  page.should have_selector("ul#exercise_list li#box_list:nth-child(1) article a", content: "Baaa")
end