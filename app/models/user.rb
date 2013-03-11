class User < ActiveRecord::Base
  extend FriendlyId

  serialize :features, ActiveRecord::Coders::Hstore

  attr_accessible :username, :email, :password, :gym,
                  :password_confirmation, :bio,
                  :avatar, :terms_of_service, :features

  friendly_id :username, use: :slugged

  before_create :make_user_trainer
  after_create  :send_welcome_email
  after_create  :create_profile

  has_many   :workouts,          dependent: :destroy
  has_many   :favorite_workouts, dependent: :destroy
  belongs_to :facebook_user,     dependent: :destroy
  has_one    :profile

  validates_uniqueness_of :username, :email
  validates_presence_of   :username, :email

  validates :terms_of_service, presence: true, on: :create
  validates :password,         presence: true, on: :create
  validates :password,         confirmation: true, on: :create # if: password?
  validates :terms_of_service, acceptance: { accept: 'true' }

  delegate :name,     to: :profile
  delegate :org_name, to: :profile

  # for authlogic gem
  acts_as_authentic { |c| c.login_field = "email" }

  # for carrierwave image management gem
  mount_uploader :avatar, AvatarUploader

  def send_welcome_email
    UserMailer.sign_up_welcome(self).deliver
  end

  def activate!
    reset_perishable_token!
    self.active = true
    save
  end

  def not_activated?
    self.active != true
  end

  def trainer?
    role == "trainer"
  end

  def admin?
  	role == "admin"
  end

  def staff?
    role == 'staff'
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
    params == nil ? self.workouts : self.workouts_from_favorites(self.favorite_workouts)
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

  # for the rollout gem see config/initializers/rollout
  def wants_to_see(feature)
    features.keys.include?(feature)
  end

  def display_avatar(options=nil)
    avatar_url ? avatar_url(options) : default_user_icon
  end

  def display_grayscale_avatar
    display_avatar(transformation: 'e_grayscale')
  end

  private

  def make_user_trainer
    self.role = "trainer"
  end

  def create_profile
    # TODO: put this in a background job
    self.profile = Profile.create(user_id: self.id)
  end

  def default_user_icon
   "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362912581/uq8duetx0tyt9mioie8q.png"
  end
end