module WorkoutHelper

  def link_to_edit_or_copy_workout current_user, workout
  	if can? :update, workout
      link_to_edit_workout workout
    # elsif current_user == nil
    #   link_to_redirect
    else
      link_to_create_copy workout
  	end
  end

  def link_to_edit_workout workout
  	link_to "EDIT WORKOUT", edit_user_workout_path(workout.user_id, workout), 
  	                        class: "btn btn-info button_space"
  end

  # def link_to_redirect
  # 	link_to "CREATE COPY", copy_workouts_redirect_path, class: "btn btn-primary button_space"
  # end

  def link_to_create_copy workout
  	link_to "CREATE COPY", copy_workouts_path({id: workout.id}), 
                           method: :post,
  	                       class: "btn btn-primary button_space"
  end

  def link_to_download_workout_pdf workout
  	link_to "DOWNLOAD AS PDF", user_workout_path(workout.user_id, workout, format: "pdf"), 
  	                           class: "btn btn-success button_space"
  end
end