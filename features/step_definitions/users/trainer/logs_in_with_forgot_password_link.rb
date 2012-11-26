When /^I complete a forgot password flow$/ do
  visit root_path
  click_link "LOGIN"
  click_link "Forgot password?"
  fill_in "password_reset_email", with: @trainer.email
  click_button "RESET PASSWORD"
end

When /^I follow the link emailed to me$/ do
  @trainer = User.find(@trainer.id) # issue w/ cucumber using prev perishable_token
  visit edit_password_reset_path(@trainer.perishable_token)
end

And /^I enter in a new password$/ do
  fill_in "user_password", with: "password"
  fill_in "user_password_confirmation", with: "password"
  click_button "SAVE NEW PASSWORD"
end

Then /^I should be on my edit account page$/ do
  current_path.should eq user_path(@trainer)
end

Then /^I should be loggen in$/ do
  within ".navbar" do
    page.should have_content @trainer.username.upcase
  end
end