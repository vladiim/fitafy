class FitafyMailer < ActionMailer::Base

  def connect_to_database!
  	ActiveRecord::Base.verify_active_connections!
  end

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