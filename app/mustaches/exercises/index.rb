module Exercises
  class Index < Mustache
    include ActionView::Helpers::TextHelper # for truncate()
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :exercise, :view_context, :user, :workout

    delegate :id, to: :@exercise

    delegate :exercise_path,      to: :@view_context
    delegate :edit_exercise_path, to: :@view_context
    delegate :link_to,            to: :@view_context

    delegate :admin?, to: :@user

    def initialize(view_context=nil, user=nil)
      @view_context, @user = view_context, user
    end

    def name
      @exercise.name.titleize
    end

    def paramitized_name
      name.parameterize
    end

    def description
      @exercise.description ? truncated_description : 'No description...'
    end

    def muscle
      @exercise.muscle.titleize
    end

    def url
      exercise_path(@exercise)
    end

    def edit_url
      edit_exercise_path(@exercise) if user_is_admin?
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
      link_to "ADD", '#',
              'data-exercise_id' => id,
              'data-workout_id' => @workout.id,
              class: "add_exercise_to_workout_button btn btn-primary btn-small"
    end

    def user_is_admin?
      @user && admin?
    end

    def truncated_description
      truncate(@exercise.description.humanize, length: 90)
    end
  end
end