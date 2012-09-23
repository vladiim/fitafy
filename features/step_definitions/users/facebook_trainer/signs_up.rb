Given /^I'm a new trainer$/ do
  # express the regexp above with the code you wish you had
end

Given /^I have a Facebook account$/ do
  OmniAuth.config.add_mock(:facebook, { :uid => '12345', info: {name: "FACEBOOK NAME", email: "EMAIL@EMAIL.COM"}, credentials: { token: "1234", expires_at: 4503662457 } })
end

Then /^I should have a new fitafy account$/ do
  @user = User.last
  @user.username.should eq "facebook-name"
end

Then /^my profile should have my Facebook name as my username$/ do
  visit user_path(@user)
  within "h1" do
    page.should have_content "FACEBOOK-NAME"
  end
end