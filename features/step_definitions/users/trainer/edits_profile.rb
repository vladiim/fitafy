When /^I edit my profile$/ do
  within('.navbar') do
    click_link "EDIT PROFILE"
  end
  fill_in "user_username", with: "gza"
  fill_in "user_email",    with: "gza@wu.com"
  click_button "SAVE CHANGES"
end

Then /^my profile should change$/ do
  user = User.find_by_username("gza")
  user.email.should eq "gza@wu.com"
end

Then /^Snapz should give me a message$/ do
  page.should have_content "Your profile was updated like a bawse."
end