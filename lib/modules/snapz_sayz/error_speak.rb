module SnapzSayz

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
end