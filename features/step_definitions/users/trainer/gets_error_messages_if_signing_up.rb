When /^I try creating an account incorrectly$/ do
  within "#sign_up_form" do
  	fill_in "user_username", with: @trainer.username
  	fill_in "user_email",    with: "1"
  	fill_in "user_password", with: "1"
  	click_button "SIGN UP"
  end
end

Then /^I should see the error messages$/ do
  page.should have_content "username already exsists"
end