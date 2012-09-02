Given /^the trainer has no favorite workouts$/ do
  # express the regexp above with the code you wish you had
end

When /^I want to look at their favorite workouts$/ do
  visit user_path(@trainer)
end

Then /^I shouldn't see a link to their favorites$/ do
  within "#user_stats" do
  	page.should have_no_content "Favorite"
  end
end