module Workouts
  class Index < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :workout
  
    delegate :muscles,         to: :@workout
    delegate :name,            to: :@workout
    delegate :username,        to: :@workout
    delegate :exercises_count, to: :@workout
    delegate :client_level,    to: :@workout
    delegate :difficulty,      to: :@workout
  
    def url
      users_workout_path(workout.username, workout)
    end

    def render_json(workout, view_context)
      @workout = workout
      {
        muscles:         muscles,
        url:             view_context.users_workout_path(username, @workout),
        name:            name,
        client_level:    client_level,
        difficulty:      difficulty,
        username:        username,
        exercises_count: exercises_count
      }
    end
  end
end