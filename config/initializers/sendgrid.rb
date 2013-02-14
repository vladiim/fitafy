# http://docs.sendgrid.com/documentation/get-started/integrate/examples/rails-example-using-smtp/

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => "fitafy.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_startttls_auto => true
}