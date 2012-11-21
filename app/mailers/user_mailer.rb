class UserMailer < ActionMailer::Base
  # include Resque::Mailer
  include SendGrid

  default from: "vlad@fitafy.com"

  if Rails.env == "development"
    default_url_options[:host] = "localhost:3000"
  else
    default_url_options[:host] = "www.fitafy.com"
  end

  sendgrid_category :use_subject_lines
  # sendgrid_enable      :ganalytics, :opentrack

  def sign_up_welcome trainer
  	@username = trainer.username
  	mail to: trainer.email,
  	     subject: SnapzSayz::EmailSpeak.sign_up_welcome_title
  end

  def password_reset trainer
    @username = trainer.username
    @url      = edit_password_reset_url(trainer.perishable_token)
    mail to: trainer.email,
          subject: SnapzSayz::UserSpeak.sent_password_reset
  end
end