require 'digest/md5'

module CreateUser

  def create_user
    create_username
    create_email
  	fill_in "user_username", 			        with: @username
  	fill_in "user_email", 	  			      with: @email
  	fill_in "user_password",  			      with: "wuwear"
  	fill_in "user_password_confirmation", with: "wuwear"
    click_sign_up
    find_user
  end

  def create_username
    @username = "rza-#{Digest::MD5.hexdigest('wu')}"
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