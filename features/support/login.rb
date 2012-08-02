module Login

  def login user
  	visit root_path
  	click_link "LOGIN"
  	fill_in "user_session_email", 	 with: user.email
  	fill_in "user_session_password", with: "password"
  	click_button "LOGIN"
  end
end

World Login