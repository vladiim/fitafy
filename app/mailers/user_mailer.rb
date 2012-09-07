class UserMailer < ActionMailer::Base
  include Resque::Mailer

  default from: "snapz@fitafy.com"

  def sign_up_welcome trainer
  	@username = trainer.username
  	mail to: trainer.email,
  	     subject: SnapzSayz::EmailSpeak.sign_up_welcome_title
  end
end
