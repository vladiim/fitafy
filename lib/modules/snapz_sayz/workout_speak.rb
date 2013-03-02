module SnapzSayz

  module WorkoutSpeak

    def self.creating_new_workout
      "W00t! New workout comin'!"
    end

    def self.new_workout_fail
      "Something went wrong hombre - try again"
    end

    def self.created_workout
      "New workout! You know sumpin'? The world's a better place"
    end

    def self.workout_updated
      "Snip, snap we update workouts like dat!"
    end

    def self.editing_exsisting_workout
      "Gonna switch up the workout eh? Nice... nice"
    end

    def self.deleted_workout
      "That's one dead workout... I'll miss that guy"
    end
  
    def self.deleting_workout_confirmation
      "Hey, let's not be rash... you really gonna kill this workout?"
    end

    def self.copy workout_name
      "#{workout_name.titleize} has been copied to your workouts, like Wu said: it's yourz!"
    end

    def self.copy_redirect
      "Wanna copy a workout? No problems! You just need to login first yo!"
    end

    def self.no_level
      "No level info!"
    end

    def self.confirm_delete
      "You sure you want to delete this workout? Super dooper sure?"
    end
  end
end