class User < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :username, :email, :password, 
                  :password_confirmation, :role,
                  :avatar, :terms_of_service

  friendly_id :username, use: :slugged

  before_create :make_user_trainer
  after_create :send_welcome_email

  has_many :workouts, dependent: :destroy
  has_many :favorite_workouts, dependent: :destroy
  belongs_to :facebook_user, dependent: :destroy

  validates_uniqueness_of :username, :email
  validates_presence_of   :username, :email
  validates :terms_of_service, presence: true, on: :create
  validates :password, presence: true, on: :create
  validates :password, confirmation: true, on: :create # if: password?
  validates :terms_of_service, acceptance: { accept: 'true' }

  # for authlogic gem
  acts_as_authentic { |c| c.login_field = "email" }

  # for carrierwave image management gem
  mount_uploader :avatar, AvatarUploader

  def send_welcome_email
    UserMailer.sign_up_welcome(self).deliver
  end

  def trainer?
  	role == "trainer"
  end

  def activate!
    reset_perishable_token!
    self.active = true
    save
  end

  def active?
    self.active == true
  end

  def not_activated?
    self.active != true
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

  def build_favorite_workout workout_id
    self.favorite_workouts.build workout_id: workout_id
  end

  def workouts_from_favorites favorite_workouts
    workouts = []
    favorite_workouts.each do |favorite_workout|
      workout = Workout.find(favorite_workout.workout_id)
      workouts << workout
    end
    workouts
  end

  def workout_in_favorites? workout
    self.favorite_workouts.each do |favorite_workout|
      if favorite_workout.workout_id == workout.id
        return true
      end
    end
    return false  
  end

  def has_favorite_workouts?
    self.favorite_workouts.any?
  end

  def find_favorite_workout workout_id
    self.favorite_workouts.each do |favorite_workout|
      if favorite_workout.workout_id == workout_id
        return favorite_workout
      end
    end
    raise "#{self.username} hasn't favorited that workout"
  end

  def facebook_user?
    FacebookUser.find_by_user_id(self.id) ? true : false
  end

  private

    def make_user_trainer
      self.role = "trainer"
    end
end