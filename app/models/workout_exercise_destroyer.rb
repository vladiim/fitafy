class WorkoutExerciseDestroyer

  attr_accessor :workout_exercise, :workout_exercises,
                :workout, :order_number

  def initialize(workout_exercise, workout)
  	@workout_exercise, @workout = workout_exercise, workout
  	@order_number = @workout_exercise.order_number
  end

  def destroy_safely!
    update_workout_exercises! if more_than_one_exercise?
    destroy_workout_exercise!
  end

  private

  def more_than_one_exercise?
  	@workout.exercises_count > 1
  end

  def after_workout_exercise?(we)
  	we.order_number > @order_number
  end

  def destroy_workout_exercise!
  	@workout_exercise.destroy
  end

  def update_workout_exercises!
    @workout_exercises = @workout.workout_exercises
    @workout_exercises.delete(@workout_exercise)
    update_each_workout_exercise!
  end

  def update_each_workout_exercise!
    @workout_exercises.each { |we| update_order_number(we) if after_workout_exercise?(we) }
  end

  def update_order_number(we)
    we.order_number -= 1
    we.save
  end
end