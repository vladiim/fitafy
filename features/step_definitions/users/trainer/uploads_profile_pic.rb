Given /^I'm on my profile page$/ do
  click_link "EDIT PROFILE"
end

When /^I upload a profile pic$/ do
  attach_file "Profile Pic", "#{Dir.pwd}/app/assets/images/beer_me.jpeg"
  click_button "Change Profile Pic"
end

Then /^that should be set as my profile pic$/ do
  page.should have_css("img", src: "http://res.cloudinary.com/hdxvaer2w/image/upload/johnny%#{/d/}.png")
end