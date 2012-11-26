class PasswordReset

  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :email, :user

  def initialize user=nil
  	@user = user unless user == nil
  end

  def self.reset_password email
    user = User.find_by_email(email)
    self.make_and_send_password_reset(user) if user
  end

  def self.make_and_send_password_reset user
    user.reset_perishable_token!
    user.save!
    UserMailer.password_reset(user).deliver
  end

  def update_user passwords
    self.user.password = passwords.fetch('password')
    self.user.password_confirmation = passwords.fetch('password_confirmation')
    user.save ? true : false
  end

  def persisted?
  	false
  end
end