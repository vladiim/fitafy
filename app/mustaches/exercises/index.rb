module Exercises
  class Index < Mustache
    include ActionView::Helpers::TextHelper # for truncate()
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :exercise, :view_context, :user, :workout

    def initialize(view_context=nil, user=nil)
      @view_context, @user = view_context, user
    end

    def id
      @exercise.id
    end 

    def name
      @exercise.name.titleize
    end

    def paramitized_name
      name.parameterize
    end

    def description
      truncate(@exercise.safe_description.humanize, length: 70)
    end

    def muscle
      @exercise.muscle.titleize
    end

    def url
      @view_context.exercise_path(@exercise)
    end

    def edit_url
      @view_context.edit_exercise_path(@exercise) if user_is_admin?
    end

    def new_workout_exercise_form
      generate_new_workout_exercise_form if @workout
    end

    def render_json(exercise)
      @exercise = exercise
      {
        id:          id,
        name:        name,
        description: description,
        muscle:      muscle,
        url:         url,
        edit_url:    edit_url,
        admin:       user_is_admin?,
        paramitized_name: paramitized_name,
        new_workout_exercise_form: new_workout_exercise_form
      }
    end

    private

    def generate_new_workout_exercise_form
      @view_context.link_to "ADD", '#',
                            'data-exercise_id' => @exercise.id,
                            'data-workout_id' => @workout.id,
                            class: "add_exercise_to_workout_button btn btn-primary btn-mini"
    end

    def user_is_admin?
      @user && @user.admin?
    end
  end
end