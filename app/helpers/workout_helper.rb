module WorkoutHelper

  def link_to_baby_form current_user, workout, form_attribute, form_element
    content_tag(:div, class: "edit_workout_#{form_attribute.to_s}_form hidden") do
      render(partial: "baby_form",
           locals: { form_element: "#{form_element}",
                     form_attribute: "#{form_attribute}"}).to_s
    end
  end

  def link_to_edit_form workout, form_attribute
    if can? :manage, workout
      link_to "Edit #{form_attribute}", "#", class: "edit_workout_#{form_attribute}"
    else
      nil
    end
  end

  def link_to_add_exercise workout
    if can? :manage, workout
      link_to "ADD EXERCISE", "#", class: "btn btn-primary add_workout_exercise_form button_space"
    end
  end

  def link_to_create_copy workout
    if can? :manage, workout
      nil
    else
  	  link_to "CREATE COPY", copy_workouts_path({id: workout.id}), 
        method: :post,
  	    class: "btn btn-primary button_space"
    end
  end

  def link_to_download_workout_pdf workout
  	link_to "DOWNLOAD AS PDF", user_workout_path(workout.user_id, workout, format: "pdf"), 
  	                           class: "btn btn-success button_space"
  end

  def link_to_delete_workout workout, snapz_message, cta=nil
    return if cta == nil

    link_to "DELETE WORKOUT", user_workout_path(current_user, workout), 
                              method: :delete,
                              class: "btn btn-danger",
                              data: { confirm: snapz_message }
  end

  def new_workout
    [current_user, current_user.build_workout]
  end
end