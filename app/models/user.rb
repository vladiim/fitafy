class User < ActiveRecord::Base
  extend FriendlyId

  acts_as_authentic do |c|
  	c.login_field = "email"
  end

  attr_accessible :username, :email, :password, :password_confirmation, :role

  friendly_id :username, use: :slugged

  before_create :make_user_trainer

  has_many :workouts
  has_many :favorite_workouts

  def trainer?
  	role == "trainer"
  end

  def admin?
  	role == "admin"
  end

  def build_workout params=nil
    if params == nil
      workouts.build user_id: self.id
    else
      params.merge user_id: self.id
      self.workouts.build params
    end
  end

  def copy_workout workout
    new_workout = workout.dup
    new_workout.user_id = self.id
    new_workout.save!
    new_workout.copy_workout_exercises workout
  end

  def my_workouts params=nil
    if params == nil
      self.workouts
    else
      self.workouts_from_favorites self.favorite_workouts
    end
  end

  def workouts_count
    self.workouts.count
  end

  def count_favorite_workouts
    self.favorite_workouts.count
  end

  def workouts_from_favorites favorite_workouts
    workouts = []
    favorite_workouts.each do |favorite_workout|
      workout = Workout.find favorite_workout.workout_id
      workouts << workout
    end
    workouts
  end

  def has_favorite_workouts?
    self.favorite_workouts.any?
  end

  private

    def make_user_trainer
      self.role = "trainer"
    end
end