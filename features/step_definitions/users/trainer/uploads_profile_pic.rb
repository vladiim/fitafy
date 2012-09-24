Given /^I'm on my profile page$/ do
  visit user_path(@trainer)
end

When /^I upload a profile pic$/ do
  attach_file "Profile Image", "#{Dir.pwd}/app/assets/images/das_boot.png"
  click_button "Change Profile Pic"
end

Then /^that should be set as my profile pic$/ do
  # @trainer.avatar.should eq "/uploads/user/avatar/1/das_boot.png"
  within "#profile" do
  	page.should have_css("img", src: "/uploads/user/avatar/1/das_boot.png")
  end
end