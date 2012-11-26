class UserMailer < ActionMailer::Base
  # include Resque::Mailer
  include SendGrid
  extend MailerDefaultUrl

  default_url_options[:host] = MailerDefaultUrl.set_env_url
  default from: "vlad@fitafy.com"

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
         subject: SnapzSayz::UserSpeak.password_reset_title
  end
end