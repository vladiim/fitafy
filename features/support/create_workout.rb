module CreateWorkout

  def create_workout
  	fill_in_workout_form
  	click_workout_button
  end

  def fill_in_workout_form
  	visit_new_workout_path
    fill_in "workout_name", with: "no said date"
    fill_in "workout_notes", with: "These military arm' marine, sub machine gun"
  end

  def click_workout_button
  	click_button "Create Workout"
  end

  def visit_new_workout_path
  	visit new_workout_path
  end
end

World CreateWorkout