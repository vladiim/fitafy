module Exercises
  class Index < Mustache
    include ActionView::Helpers::TextHelper # for truncate()
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :exercise, :view_context, :user

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
      @view_context.edit_exercise_path(@exercise) if @user && @user.admin?
    end

    def render_json(exercise, view_context)
      @exercise, @view_context = exercise, view_context
      {
        id:          id,
        name:        name,
        description: description,
        muscle:      muscle,
        url:         url,
        edit_url:    edit_url
      }.to_json
    end
  end
end