class SignupMailer < ActionMailer::Base
  default from: 'vlad@fitafy.com'

  def welcome_email(email)
  	mail to: email, subject: CopyGenerator::EmailCopy.signup_subject
  end
end