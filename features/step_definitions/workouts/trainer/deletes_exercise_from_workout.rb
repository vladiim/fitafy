When /^I click delete exercise$/ do
  within "tbody" do
  	click_link "REMOVE EXERCISE"
  end
end

Then /^that exercise should be removed$/ do
  page.should have_content "You trim down super easy!"
end