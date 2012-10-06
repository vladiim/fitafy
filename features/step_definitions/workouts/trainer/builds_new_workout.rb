Given /^I want to create a new workout$/ do
  visit root_path
end

When /^I click the "(.*?)" new workout link$/ do |new_workout_link|
  within ".navbar" do
    click_link new_workout_link
  end
end

When /^I fill in the workout name$/ do
  fill_in "workout_name", with: "NEW WORKOUT NAME"
  click_link "CREATE WORKOUT"
end

Then /^I should be on the newly created workout's page$/ do
  within "h1" do
  	page.should have_content "NEW WORKOUT NAME"
  end
end

Then /^Snapz should say "(.*?)" because I'm on a new workout page$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end

Then /^I should see workout CTA buttons for my workout$/ do
  page.should have_content "blah blah laksjdflk"
end