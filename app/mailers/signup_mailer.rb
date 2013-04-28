class SignupMailer < FitafyMailer
  default from: 'vlad@fitafy.com'

  def welcome_email(email)
    connect_to_database!
    user_record = UserRecord.find_by_email(email)
    @url = "#{host}/unsubscribe/#{user_record.perishable_token}"
  	mail to: email, subject: CopyGenerator::EmailCopy.signup_subject
  end
end