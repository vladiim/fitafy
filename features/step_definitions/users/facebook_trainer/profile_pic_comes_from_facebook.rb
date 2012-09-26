When /^I go to my profile page$/ do
  trainer = User.last
  visit user_path(trainer)
end

Then /^my Facebook profile pic should be my fitafy profile pic$/ do
  page.should have_css("img", src: "/assets/facebook_boot_image.png")
end