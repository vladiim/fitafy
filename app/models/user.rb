class User < ActiveRecord::Base
  extend FriendlyId

  acts_as_authentic do |c|
  	c.login_field = "email"
  end

  attr_accessible :username, :email, :password, :password_confirmation

  friendly_id :username, use: :slugged
end