module SnapzSayz

  class Information
  	def self.title
  	  options = [
        "fitafy fly!",
        "fitification time!"
      ]
      options[rand options.length]
  	end

  	def self.description
  	  "fitafy helps personal trainers keep track of their client's workouts and stay fly"
  	end
  end

  class ExerciseSpeak
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
      "That's one dead exercise... I'll miss that guy"
    end
  end
end