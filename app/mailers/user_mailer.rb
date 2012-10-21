class UserMailer < ActionMailer::Base
  # include Resque::Mailer
  include SendGrid

  default from: "vlad@fitafy.com"

  sendgrid_category :use_subject_lines
  # sendgrid_enable      :ganalytics, :opentrack

  def sign_up_welcome trainer
  	@username = trainer.username
  	mail to: trainer.email,
  	     subject: SnapzSayz::EmailSpeak.sign_up_welcome_title
  end
end
