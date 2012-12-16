class Activation

  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :email

  def resend(email)
  	user = User.find_by_email(email)
  	user ? user.send_welcome_email : false
  end

  def persisted?
  	false
  end
end