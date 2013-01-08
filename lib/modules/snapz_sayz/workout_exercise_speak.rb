module SnapzSayz

  module WorkoutExerciseSpeak
    def self.confirm_delete
      "You sure you want to delete this exercise? Super dooper sure?"
    end

    def self.delete
      "You trim down super easy! Exercise gone!"
    end

    def self.no_instructions
      "No exercise instructions... guessing time!"
    end

    def self.update_failed
      "We couldn't update the Exercise this time round, but don't give up!"
    end
  end
end