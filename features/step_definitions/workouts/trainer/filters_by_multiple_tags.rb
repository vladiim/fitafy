Given /^a workout exercise with lots of exercises$/ do
  ['abs', 'biceps'].each do |muscle|
  	create :exercise, muscle_list: muscle
  end
  @workout = create :workout, user: @trainer
  @workout_exercise = create :workout_exercise, workout: @workout
end

Given /^I'm adding a new exercise$/ do
  visit user_workout_path(@trainer, @workout)
  click_link "ADD EXERCISE"
end

When /^I click on more than one tag$/ do
  click_link "BICEPS"
  click_link "ABS"
end

Then /^I should see the exercise filtered by the tags$/ do
  within "#exercise_list" do
  	page.should have_css "tr",    text: "Push Up"
  	page.should have_css "tr",    text: "Chin Up"
  	page.should have_no_css "tr", text: "Dips"
  end
end