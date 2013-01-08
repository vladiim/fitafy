module Workouts
  class Index < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"
  
  	attr_accessor :workout
  
    def muscles
      @workout.muscles
    end
  
    def url
      users_workout_path(workout.username, workout)
    end
  
    def name
      @workout.name
    end
  
    def client_level
      @workout.safe_client_level
    end
  
    def difficulty
      @workout.safe_difficulty
    end
  
    def username
      @workout.username
    end
  
    def exercise_count
      @workout.exercises_count
    end

    def render_json(workout, view_context)
      self.workout = workout
      {
        muscles:         muscles,
        url:             view_context.users_workout_path(@workout.username, workout),
        name:            name,
        client_level:    client_level,
        difficulty:      difficulty,
        username:        username,
        exercises_count: exercise_count
      }
    end
  end
end