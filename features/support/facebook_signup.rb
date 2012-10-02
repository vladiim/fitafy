module FacebookSignup

  def create_facebook_mock name="FACEBOOK NAME"
  	OmniAuth.config.add_mock(:facebook, { "uid" => '12345', 
  		                                  "info" => { "name" => name,
  		                                  	      "email" => "EMAIL@EMAIL.COM", 
                                                "image" => "http://graph.facebook.com/664725038/picture?type=square" },
  		                                  "credentials" => { 
                                                "token" => "1234", 
  		                                  	      "expires_at" => 4503662457 } })
  end

  def sign_up_as_facebook_trainer
    create_facebook_mock
    visit login_url
    click_link "Sign in with Facebook"
  end
end

World FacebookSignup