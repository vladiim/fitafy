ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :domain => "fitafy.com",
  :authentication => :plain,
  :user_name => "fitafymail",
  :password => "CDp2pdAWCDp2pdAW"
}