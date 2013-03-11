# When /^I've created an account$/ do
#   create_new_user
# end

# When /^I try to log in$/ do
#   login @new_user
# end

# Then /^I get a message to confirm my email$/ do
# 	current_path.should eq user_path(@new_user)
  # page.should have_content SnapzSayz::ActivationsSpeak.confirm_email
# end

# Then /^I can resend the email$/ do
#   fill_in "activation_email", with: @new_user.email
#   click_button "RESEND EMAIL"
# end