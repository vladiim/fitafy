module TestHelpers
  def last_email
  	ActionMailer::Base.deliveries.last
  end

  def sign_up
    fill_in 'user_record_email', with: email
    click_button 'SIGN UP'
  end

  def email
  	"test#{random}@email.com"
  end

  def random
    Digest::MD5.hexdigest(Time.now.to_s)    
  end
end