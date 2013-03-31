class SignupMailer < ActionMailer::Base
  default from: 'vlad@fitafy.com'

  def welcome_email(email)
    user_record = UserRecord.find_by_email(email)
    @url = "#{host}/unsubscribe/#{user_record.perishable_token}"
  	mail to: email, subject: CopyGenerator::EmailCopy.signup_subject
  end

  private

  def host
  	if Rails.env == 'test'
  	  'www.example.com'
  	elsif Rails.env == 'development'
  	  'localhost:3000'
  	else
  	  'www.fitafy.com'
  	end
  end
end