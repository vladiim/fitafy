class User < ActiveRecord::Base
  extend FriendlyId

  acts_as_authentic do |c|
  	c.login_field = "email"
  end

  attr_accessible :username, :email, :password, :password_confirmation, :role

  friendly_id :username, use: :slugged

  before_create :make_user_trainer

  has_many :workouts

  def trainer?
  	role == "trainer"
  end

  def admin?
  	role == "admin"
  end

  def copy_workout workout
    new_workout = workout.dup
    new_workout.user_id = self.id
    new_workout.save!
  end

  private

    def make_user_trainer
      self.role = "trainer"
    end
end