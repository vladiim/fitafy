Given /^I've signed in through Facebook$/ do
  create_facebook_mock
  visit login_url
  click_link "Sign in with Facebook"
end

Then /^I should be signed back in through Facebook$/ do
  # this is what authlogic needs to log in
  # {"email"=>"tical-5378@wu.com", "password"=>"password"}
  within ".navbar" do
  	page.should have_content "FACEBOOK-NAME"
  end
end