class ExerciseSwapper

  attr_accessor :old_workout_exercise
  attr_reader :workout_exercise, :order_number

  def initialize workout_exercise, params=nil
  	@workout_exercise = workout_exercise
    @order_number     = params.fetch("order_number").to_i
    find_old_workout_exercise
  end

  def swap_positions!
    @old_workout_exercise ? swap_new_and_old : return
  end

  private

  def find_old_workout_exercise
    workout = @workout_exercise.workout
    workout.workout_exercises.each { |w_e| set_old_workout_exercise w_e }
  end

  def swap_new_and_old
    @old_workout_exercise.order_number = @workout_exercise.order_number
    @workout_exercise.order_number     = @order_number
    @old_workout_exercise.save
    @workout_exercise.save
  end

  def set_old_workout_exercise w_e
    @old_workout_exercise = w_e if is_old_workout_exercise?(w_e)
  end

  def is_old_workout_exercise? w_e
    w_e.order_number == @order_number && w_e != @workout_exercise
  end
end