class SignupMailer < ActionMailer::Base
  default from: 'vlad@fitafy.com'

  def welcome_email(user)
  	mail to: user.email, subject: CopyGenerator::EmailCopy.signup_subject
  end
end