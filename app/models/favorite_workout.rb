class FavoriteWorkout < ActiveRecord::Base

  attr_accessible :user_id, :workout_id

  belongs_to :user
  belongs_to :workout

  validates_presence_of :user, :workout
end