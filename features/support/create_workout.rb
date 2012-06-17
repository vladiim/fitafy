module CreateWorkout

  WORKOUT_ATTRIBUTES = {name: "no said date", notes: "these military arm' marine. sub machine gun"}

  def create_workout
    create_exercise
    visit_new_workout_path
    fill_in_exercise_details
  	fill_in_workout_form
  	click_workout_button
  end

  def fill_in_workout_form
    fill_in "workout_name", with: WORKOUT_ATTRIBUTES[:name]
    fill_in "workout_notes", with: WORKOUT_ATTRIBUTES[:notes]
  end

  def fill_in_exercise_details
    fill_in "workout_workout_exercises_attributes_0_sets", with: "3"
    # fill_in "workout_workout_exercises_attributes_0_reps", with: "15"
  end

  def click_workout_button
  	click_button "Create Workout"
  end

  def visit_new_workout_path
  	visit new_workout_path
  end
end

World CreateWorkout