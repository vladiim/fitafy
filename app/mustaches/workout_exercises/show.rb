module WorkoutExercises
  class Show < Mustache

    attr_accessor :workout_exercise, :user, :view_context
    attr_reader   :workout

    def initialize(view_context, user)
      @view_context, @user = view_context, user
    end

    def name
      @workout_exercise.name
    end

    def instructions
      @workout_exercise.instructions
    end

    def sets
      @workout_exercise.sets
    end

    def muscle
      @workout_exercise.muscle
    end

    def equipment_name
      @workout_exercise.equipment_name
    end

    def order
      @workout_exercise.safe_order
    end

    def up_link
      return if workout_exercise_isnt_users?
      first_order? ? nil : generate_up_link
    end

    def down_link
      return if workout_exercise_isnt_users?
      @workout = @workout_exercise.workout
      last_order? ? nil : generate_down_link
    end

    private

    def workout_exercise_isnt_users?
      @user.id != @workout_exercise.user_id
    end

    def first_order?
      order <= 1
    end

    def last_order?
      order >= @workout.exercises_count
    end

    def generate_up_link
      @view_context.link_to 'Move Up', '#'
    end

    def generate_down_link
      @view_context.link_to 'Move Down', '#'    	
    end
  end
end