When /^I complete a forgot password flow$/ do
  visit root_path
  click_link "LOGIN"
  click_link "Forgot password?"
  fill_in "password_reset_email", with: @trainer.email
end

When /^I follow the link emailed to me$/ do  
  visit "www.example.com/#{@trainer.perishable_token}/edit"
end

Then /^I should be on my edit account page$/ do
  current_path.should eq edit_user_path(@trainer)
end

Then /^Snapz should ask me to reset my password$/ do
  page.should have_content Snapz::UserSpeak.reset_password
end

Then /^I should have been sent the link in an email$/ do
  ActionMailer::Base.deliveries.last.body.should include @trainer.perishable_token
end