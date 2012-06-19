module CreateWorkout

  WORKOUT_ATTRIBUTES = {name: "no said date", notes: "these military arm' marine. sub machine gun"}
  ALPHABET           = ("A".."Z").to_a.reverse # reverse order to ensure alphabetical sorting

  def create_workout number_of_w=1
    create_exercise
    number_of_w.times do |n|
      visit_new_workout_path
      fill_in_exercise_details
  	  fill_in_workout_form name=ALPHABET[n]
  	  click_workout_button
    end
  end

  def fill_in_workout_form name=""
    fill_in "workout_name", with: name + WORKOUT_ATTRIBUTES[:name]
    fill_in "workout_notes", with: WORKOUT_ATTRIBUTES[:notes]
  end

  def fill_in_exercise_details
    fill_in "workout_workout_exercises_attributes_0_sets", with: "3"
    # fill_in "workout_workout_exercises_attributes_0_reps", with: "15"
  end

  def click_workout_button
  	click_button "CREATE WORKOUT"
  end

  def visit_new_workout_path
  	visit new_workout_path
  end
end

World CreateWorkout