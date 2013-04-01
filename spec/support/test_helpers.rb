module TestHelpers
  def last_email
  	ActionMailer::Base.deliveries.last
  end

  def sign_up
    visit root_path
    fill_in 'user_record_email', with: email
    click_button 'SIGN UP'
  end

  def email
  	'test@email.com'
  end
end