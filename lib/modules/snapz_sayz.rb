module SnapzSayz

  module Information

  	def self.title
  	  options = [
        "FITAFY FLY!",
        "FITIFICATION TIME!"
      ]
      options[rand options.length]
  	end

  	def self.usp
      "Gazillions of workouts and exercises to help you manage your Personal Training clients!"
  	  #"fitafy helps personal trainers keep track of their client's workouts and stay fly"
  	end

    def self.unauthorized
      "Sorry d00d I can't show you that page!"
    end
  end

  module ExerciseSpeak

    def self.all_exercises
      "Exercises up the yoyo!"
    end

  	def self.creating_new_exercise
  	  "Creatin' a new exercise? Just give me some deets"
  	end

    def self.editing_exsisting_exercise
      "Aint this exercise good enough for ya? I always thought you were a perfectionist!"
    end

    def self.created_exercise
      "Boom! New exercise up in this mo fo!"
    end

    def self.updated_exercise
      "Man you updated the smack outta that exercise!"
    end

    def self.deleting_exercise_confirmation
      "Woah cowboy... you really wanna kill this exercise?"
    end

    def self.deleted_exercise
      "That exercise is gawn!"
    end
  end

  module WorkoutSpeak

    def self.creating_new_workout
      "W00t! New workout comin'!"
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
  end

  module UserSpeak
    def self.created_user
      "Yea, yea, yea! Welcome to the fitification!"
    end

    def self.update_user
      "Your profile was updated like a bawse."
    end

    def self.delete_confirmation
      "Deleting your account is permanent yo... no going back!"
    end

    def self.destroy
      "Your account is goooone... I'm seriously sad right now."
    end
  end

  module ErrorSpeak

    def self.wrong_size_exercise size, proper_size
      error_message = "It's #{size} and should be #{proper_size}"
      if size < proper_size
        "Oops, need some more attributes in this exercise!" + error_message
      else
        "This exercise is too long yo!" + error_message
      end
    end

    def self.wrong_workout_exercise_key
      "One o' these keys is messed up!"
    end

    def self.wrong_workout_exercise_value
      "Wayda second! That value is wrong hombre!"
    end

    def self.integer_validator
      "That's meant to be a number dood"
    end
  end

  module UserSessionSpeak

    def self.logout
      "Logged out yo!"
    end

    def self.login
      "Welcome back yo!"
    end
  end
end