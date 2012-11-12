class WorkoutsIndex < Mustache
  attr_accessor :workout

  def render workout
    @workout = workout
    super
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