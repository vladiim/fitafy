module LoginUser

  def login_user user
  	visit root_path
  	click_link "LOGIN"
  	fill_in "user_session_email", 	 with: user.email
  	fill_in "user_session_password", with: "wuwear"
  	click_button "LOGIN"
  end

end

World LoginUser