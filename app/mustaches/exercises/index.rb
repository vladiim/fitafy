module Exercises
  class Index < Mustache
    include ActionView::Helpers::TextHelper # for truncate()
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :exercise, :view_context, :user, :workout

    def initialize(view_context=nil, user=nil)
      @view_context, @user = view_context, user
      set_workout if view_context && on_show_workouts_page?
    end

    def id
      @exercise.id
    end 

    def name
      @exercise.name.titleize
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
        new_workout_exercise_form: new_workout_exercise_form
      }
    end

    private

    def generate_new_workout_exercise_form
      @view_context.simple_form_for :workout_exercise, remote: true do |f|
        f.input :exercise_id, as: :hidden, input_html: { value: @exercise.id }
        f.input :workout_id,  as: :hidden, input_html: { value: @workout.id }
        f.submit "ADD", class: "btn btn-primary btn-mini"
      end    
    end

    def on_show_workouts_page?
      @view_context.current_page?(controller: 'workouts', action: 'show')
    end

    def set_workout
      @workout = Workout.find(@view_context.params[:id])
    end

    def user_is_admin?
      @user && @user.admin?
    end
  end
end