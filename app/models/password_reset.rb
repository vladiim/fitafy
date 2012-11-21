class PasswordReset

  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :email, :user

  def initialize user=nil
  	@user = user if user
  end

  def self.reset_password email
    user = User.find_by_email(email)
    self.make_and_send_password_reset(user) if user
  end

  def self.make_and_send_password_reset user
    user.reset_perishable_token!
    UserMailer.password_reset(user).deliver
  end

  def persisted?
  	false
  end
end