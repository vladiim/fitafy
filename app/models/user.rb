class User < ActiveRecord::Base
  extend FriendlyId

  acts_as_authentic do |c|
  	c.login_field = "email"
  end

  attr_accessible :username, :email, :password, :password_confirmation, :role

  friendly_id :username, use: :slugged

  before_create :make_user_trainer

  def trainer?
  	role == "trainer"
  end

  private

    def make_user_trainer
      self.role = "trainer"
    end
end