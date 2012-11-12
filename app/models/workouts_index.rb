class WorkoutsIndex < Mustache
  include Rails.application.routes.url_helpers
  self.template_path = "app/assets/templates"

	attr_accessor :workout

  def set_workout workout
    @workout = workout
  end

  def url
    user_workout_path(workout.user_id, workout)
  end

  def name
    @workout.name
  end

  def client_level
    @workout.safe_client_level
  end

  def difficulty
    @workout.safe_difficulty
  end

  def username
    @workout.username
  end

  def exercise_count
    @workout.exercises_count
  end
end