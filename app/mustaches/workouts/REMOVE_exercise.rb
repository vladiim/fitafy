module Workouts
  class Exercise < Mustache
    include Rails.application.routes.url_helpers
    self.template_file = "app/assets/javascripts/app/templates/workouts/exercise.mustache"
  
    attr_accessor :workout_exercise, :view
  
    def url
    	exercise_path(workout_exercise.exercise)
    end
  
    def instructions
    	workout_exercise.safe_instructions.humanize
    end
  
    def edit_sets
    	"edit sets"
    end
  
    def first_muscle
    	workout_exercise.muscles[0].name
    end
  
    def delete_exercise_button
    	"delete exercise"
    end
  
    def edit_instructions
    	edit_instructions_link if my_workout_exercise
    end
  
    def users_workout_exercise
      user_owns_workout_exercise? ? true : false
    end
  
    def confirm_delete
    	SnapzSayz::WorkoutExerciseSpeak.confirm_delete
    end
  
    private
  
    def user_owns_workout_exercise?
    	view.current_user && view.current_user.id == workout_exercise.user_id
    end
  end
end