Given /^I'm a workout page with two exercises$/ do
  workout     = create :workout, user_id: @trainer.id
  @exercise_1 = create :exercise, name: "one"
  @exercise_2 = create :exercise, name: "two"
  [@exercise_1, @exercise_2].each do |ex|
    workout.workout_exercises.create exercise_id: ex.id
  end
  visit user_workout_path(@trainer, workout)
end

When /^I click position "(.*?)" on exercise "(.*?)"$/ do |position, exercise|
  within "ul.workout_exercises li:nth-child(#{exercise})" do
  	find(".icon-chevron-#{position}").click
  end
end

Then /^the exercise "(.*?)" order should be "(.*?)"$/ do |exercise_name, order|
  [@exercise_1, @exercise_2].each do |ex|
    if ex.name == exercise_name
      w_e = WorkoutExercise.find_by_exercise_id(ex.id)
      w_e.order_number.should eq order.to_i
    end
  end
end

Then /^the the title number should be "(.*?)"$/ do |order|
  within "ul.workout_exercises li:nth-child(#{order})" do
    page.should have_css "h2", content: order
  end
end