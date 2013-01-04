Given /^another exercise exists$/ do
  @other_exercise = create :exercise, name: "AAAAA"
end

When /^I click add exercise on the workout's page$/ do
  within ".exercise_list_item" do
  	click_button "ADD"
  end
end

Then /^that exercise should be added to the workout$/ do
  @workout.exercises.should include @other_exercise
end

Then /^the exercise is ordered$/ do
  # this should be on the workout_exercise not on the 
  @workout.workout_exercises[0].order_number.should eq 1
  @workout.workout_exercises[1].order_number.should eq 2
end