module SnapzSayz

  module FavoriteWorkoutSpeak
    def self.new_user
      "Snip Snap! You need to sign up before making a workout a favorite!"
    end

    def self.create
      "Ain't that funny? I really like that workout too! Added to your favorites."
    end

    def self.didnt_create
      "Not sure what happened there but I couldn't save that to your favorites... try again later."
    end

    def self.delete_favorite_workout
      "That Workout is Off. The. Radaaar."
    end
  end
end