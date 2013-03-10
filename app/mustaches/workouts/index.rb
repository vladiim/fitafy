module Workouts
  class Index < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :workout, :view_context
  
    delegate :muscles,         to: :@workout
    delegate :name,            to: :@workout
    delegate :username,        to: :@workout
    delegate :exercises_count, to: :@workout
    delegate :client_level,    to: :@workout
    delegate :difficulty,      to: :@workout
  
    delegate :regular_hard_red_icon_image_url,  to: :@view_context
    delegate :regular_hard_grey_icon_image_url, to: :@view_context

    def initialize(view_context)
      @view_context = view_context
    end

    def url
      users_workout_path(workout.username, workout)
    end

    def gray_difficulty_icon
      view_context.image_tag 'new_design/ico01.png', width: '66',
                              height: '53', alt: name
    end

    def color_difficulty_icon
      view_context.image_tag 'new_design/ico01-h.png', width: '66',
                              height: '53', alt: name, class: 'hover'
    end

    def render_json(workout, view_context)
      @workout, @view_context = workout, view_context
      {
        muscles:               muscles,
        url:                   view_context.users_workout_path(username, @workout),
        name:                  name,
        client_level:          client_level,
        difficulty:            difficulty,
        username:              username,
        exercises_count:       exercises_count,
        regular_hard_red_icon_image_url: regular_hard_red_icon_image_url,
        regular_hard_grey_icon_image_url: regular_hard_grey_icon_image_url
      }
    end
  end
end