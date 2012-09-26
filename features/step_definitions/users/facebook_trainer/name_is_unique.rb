Given /^a trainer exsists with the "(.*?)"$/ do |username|
  create :trainer, username: username
end

When /^I sign in through facebook with the same "(.*?)"$/ do |facebook_username|
  create_facebook_mock facebook_username
  visit login_url
  click_link "Sign in with Facebook"
end

Then /^my username is changed to a "(.*?)"$/ do |new_username|
  within ".navbar" do
  	page.should have_content new_username.upcase
  end
end