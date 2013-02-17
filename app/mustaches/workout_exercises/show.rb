module WorkoutExercises
  class Show < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"

    attr_accessor :workout_exercise, :user, :view_context
    attr_reader   :workout

    delegate :id,                   to: :@workout_exercise
    delegate :set_details_to_array, to: :@workout_exercise
    delegate :exercise,             to: :@workout_exercise
    delegate :workout,              to: :@workout_exercise
    delegate :sets,                 to: :@workout_exercise
    delegate :order_number,         to: :@workout_exercise
    delegate :user_id,              to: :@workout_exercise

    delegate :workout_exercise_path,            to: :@view_context
    delegate :workout_exercise_set_detail_path, to: :@view_context
    delegate :exercise_path,                    to: :@view_context

    delegate :exercises_count, to: :@workout

    def initialize(view_context, user, workout_exercise=nil)
      @view_context, @user, @workout_exercise = view_context, user, workout_exercise
      generate_fake_user if @user == nil
    end

    def name
      @workout_exercise.name.titleize
    end

    def set_details
      set_details_to_array(self)
    end

    def json_set_details
      set_details.to_json
    end

    def url
      workout_exercise_path(@workout_exercise)
    end

    def set_details_url
      workout_exercise_set_detail_path(@workout_exercise)
    end

    def exercise_url
      exercise_path(exercise)
    end

    def instructions
      @workout_exercise.instructions.humanize
    end

    def muscle
      @workout_exercise.muscle.titleize
    end

    def equipment_name
      @workout_exercise.equipment_name.titleize
    end

    def order
      order_number
    end

    def up_link
      return if workout_exercise_isnt_users?
      first_order? ? nil : generate_up_icon
    end

    def down_link
      return if workout_exercise_isnt_users?
      @workout = workout
      last_order? ? nil : generate_down_icon
    end

    def own_workout
      @user.id == user_id
    end

    def render_json(workout_exercise)
      @workout_exercise = workout_exercise
      {
        id:              id,
      	name:            name,
        set_details:     json_set_details,
        url:             url,
        set_details_url: set_details_url,
        exercise_url:    exercise_url,
      	instructions:    instructions,
      	sets:            sets,
      	muscle:          muscle,
      	equipment_name:  equipment_name,
      	order:           order,
      	up_link:         up_link,
      	down_link:       down_link,
      	own_workout:     own_workout
      }
    end

    private

    def generate_fake_user
      @user = OpenStruct.new(id: 0)
    end

    def workout_exercise_isnt_users?
      @user.id != user_id
    end

    def first_order?
      order <= 1
    end

    def last_order?
      order >= exercises_count
    end

    def generate_up_icon
      "<i class='icon-chevron-up move_workout_exercise_up'></i>"
    end

    def generate_down_icon
      "<i class='icon-chevron-down move_workout_exercise_down'></i>"
    end
  end
end