Given /^I have an exsisting Facebook account$/ do
  create_facebook_mock
end

Then /^I should have a new Facebook fitafy account$/ do
  @user = User.last
  @user.username.should eq "facebook-name"
end

Then /^my Facebook name should be in the navbar$/ do
  visit user_path(@user)
  within "h1" do
    page.should have_content "FACEBOOK-NAME"
  end
end