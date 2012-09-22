module FacebookSignup

  def create_facebook_mock
  	OmniAuth.config.add_mock(:facebook, { :uid => '12345', 
  		                                  info: { name: "FACEBOOK NAME", 
  		                                  	      email: "EMAIL@EMAIL.COM"}, 
  		                                  credentials: { token: "1234", 
  		                                  	      expires_at: 4503662457 } })
  end

  def create_facebook_mock_with_name name
  	OmniAuth.config.add_mock(:facebook, { :uid => '12345', 
  		                                  info: { name: name,
  		                                  	      email: "EMAIL@EMAIL.COM"}, 
  		                                  credentials: { token: "1234", 
  		                                  	      expires_at: 4503662457 } })
  end
end

World FacebookSignup