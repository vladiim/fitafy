class SignupMailerSender
  @queue = :email_queue

  def self.perform(email)
  	SignupMailer.welcome_email(email).deliver
  end
end