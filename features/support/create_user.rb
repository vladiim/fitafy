require 'digest/md5'

module CreateUser

  def create_user
    create_username
    create_email
    visit sign_up_url
  	fill_in "user_username", 			        with: @username
  	fill_in "user_email", 	  			      with: @email
  	fill_in "user_password",  			      with: "wuwear"
  	fill_in "user_password_confirmation", with: "wuwear"
    click_sign_up
    find_user
  end

  def create_username
    hash       = Digest::MD5.hexdigest('wu')
    short_hash = hash[1..5]
    @username = "rza-#{short_hash}"
  end

  def create_email
    @email = "#{@username}@wu.com"
  end

  def click_sign_up
  	click_button "SIGN UP"
  end

  def find_user
    @user = User.find_by_username @username
  end
end

World CreateUser