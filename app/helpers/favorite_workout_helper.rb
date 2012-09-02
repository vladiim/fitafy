module FavoriteWorkoutHelper

  def link_to_favorite_workout current_user, workout
  	if current_user == nil
  	  redirect_to_sign_up_link
  	else
  	  create_favorite_workout_link workout
  	end
  end

  def create_favorite_workout_link workout
  	link_to title, favorite_workouts_path({workout_id: workout.id}),
  	                                       method: :post,
  	                                       class: bootstrap_class
  end

  def redirect_to_sign_up_link
  	link_to title, favorite_workouts_redirect_path, class: bootstrap_class
  end

  def title
  	"ADD TO FAVORITES"
  end

  def bootstrap_class
    "btn btn-inverse"
  end
end