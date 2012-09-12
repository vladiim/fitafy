Given /^I'm a logged in user$/ do
  @user = create :user
  login @user
end