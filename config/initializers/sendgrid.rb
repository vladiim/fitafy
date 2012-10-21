# http://docs.sendgrid.com/documentation/get-started/integrate/examples/rails-example-using-smtp/

ActionMailer::Base.smtp_settings = {
  :user_name => "fitafymail",
  :password => "CDp2pdAWCDp2pdAW",
  :domain => "fitafy.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_startttls_auto => true
}