Given /^I want to create a new workout$/ do
  visit root_path
end

When /^I click the "(.*?)" new workout link$/ do |new_workout_link|
  click_link new_workout_link
end

When /^I fill in the workout name$/ do
  fill_in "workout_name", with: "NEW WORKOUT NAME"
  click_link "CREATE WORKOUT"
end

Then /^I should be on the newly created workout's page$/ do
  workout = Workout.last
  current_path.should eq user_workout_path(@trainer, workout)
  within "h1" do
  	current_page.should have_content "NEW WORKOUT NAME"
  end
end

Then /^Snapz should say "(.*?)" because I'm on a new workout page$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end