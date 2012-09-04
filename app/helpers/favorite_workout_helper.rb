module FavoriteWorkoutHelper

  def link_to_favorite_workout current_user, workout
    if current_user == nil
  	  redirect_to_sign_up_link
    elsif current_user.workout_in_favorites? workout
      favorite_workout = current_user.find_favorite_workout(workout.id)
      link_to_unfavorite_workout favorite_workout
  	else
  	  create_favorite_workout_link workout
  	end
  end

  def create_favorite_workout_link workout
  	link_to title, favorite_workouts_path({workout_id: workout.id}),
  	                                       method: :post,
  	                                       class: bootstrap_class
  end

  def link_to_unfavorite_workout favorite_workout
    link_to "REMOVE FROM FAVORITES", favorite_workout_path({id: favorite_workout.id}), 
                                     method: :delete,
                                     class:  "btn btn-danger button_space"
  end

  def redirect_to_sign_up_link
  	link_to title, favorite_workouts_redirect_path, class: bootstrap_class
  end

  def title
  	"ADD TO FAVORITES"
  end

  def bootstrap_class
    "btn btn-inverse button_space"
  end
end