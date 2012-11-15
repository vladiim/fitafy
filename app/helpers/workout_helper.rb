module WorkoutHelper

  def link_to_baby_form current_user, workout, form_attribute, form_element
    if can? :manage, workout
      render(partial: "shared/baby_form",
        locals: { form_element: form_element,
                  form_attribute: form_attribute}).to_s
    end
  end

  def link_to_edit_form workout, form_attribute
    if can? :manage, workout
      link_to "Edit #{form_attribute}", "#", class: "edit_workout #{form_attribute}"
    end
  end

  def link_to_add_exercise workout
    if can? :manage, workout
      link_to "ADD EXERCISE", "#add_workout_exercise", class: "add_workout_exercise_form btn btn-primary button_space", "data-toggle" => "modal"
    end
  end

  def link_to_create_copy workout
    unless can? :manage, workout
  	  link_to "CREATE COPY", copy_workouts_path({id: workout.id}), 
        method: :post,
  	    class: "btn btn-primary button_space"
    end
  end

  def link_to_download_workout_pdf workout
  	link_to "DOWNLOAD AS PDF", user_workout_path(workout.user_id, workout, format: "pdf"), 
  	                           class: "btn btn-success button_space"
  end

  def link_to_delete_workout workout, snapz_message
    if can? :manage, workout
      link_to "DELETE WORKOUT", user_workout_path(current_user, workout), 
                                method: :delete,
                                class: "btn btn-danger button_space",
                                data: { confirm: snapz_message }
    end
  end

  def link_to_create_workout_button
    if can? :manage, Workout
      link_to "CREATE WORKOUTS", "#new_workout_modal", "data-toggle" => "modal", class: "btn btn-success"
    else
      link_to "CREATE WORKOUTS", new_workout_path, class: "btn btn-success"
    end
  end

  def new_workout
    [current_user, current_user.build_workout]
  end

  def workouts_index_json workout
    {
      muscles:        workout.muscles,
      url:            user_workout_path(workout.user_id, workout),
      name:           workout.name,
      client_level:   workout.safe_client_level,
      difficulty:     workout.safe_difficulty,
      username:       workout.username,
      exercise_count: workout.exercises_count
    }
  end
end