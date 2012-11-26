class PasswordReset

  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :email, :user

  def initialize user=nil
  	@user = user unless user == nil
  end

  def reset_password email
    self.user = User.find_by_email(email)
    make_and_send_password_reset if user
  end

  def update_user passwords
    self.user.password = passwords.fetch('password')
    self.user.password_confirmation = passwords.fetch('password_confirmation')
    user.save ? true : false
  end

  def persisted?
  	false
  end

  private

    def make_and_send_password_reset
      user.reset_perishable_token!
      UserMailer.password_reset(user).deliver
    end
end