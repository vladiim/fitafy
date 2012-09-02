When /^I click add to favorites$/ do
  click_link "ADD TO FAVORITES"
end

Then /^I should be redirected to the sign up page$/ do
  page.should have_content "Username"
  page.should have_content "Password"
  page.should have_content "Password confirmation"
end

Then /^Snapz should give me the favorite workout redirect message$/ do
  page.should have_content "Snip Snap! You need to sign up before making a workout a favorite!"
end