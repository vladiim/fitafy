When /^I go to my profile page$/ do
  trainer = User.last
  visit user_path(trainer)
end

Then /^my Facebook profile pic should be my fitafy profile pic$/ do
  save_and_open_page
  within "#profile" do
  	page.should have_css("img", src: "/uploads/user/avatar/1/facebook_boot_image.png")
  end
end