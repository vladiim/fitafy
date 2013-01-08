Given /^I'm on a workout$/ do
  @trainer = FactoryGirl.create :trainer
  @workout = FactoryGirl.create :workout, user_id: @trainer.id
  visit_workout(@workout)
end

When /^I click the trainer's name$/ do
  click_link @trainer.username.upcase
end

Then /^I should be on the trainer's profile$/ do
  current_path.should eq user_path(@trainer)
end

Then /^I should see the trainer's stats$/ do
  within('.user_workouts_count')    { page.should have_content "1" }
  within('.user_favorite_workouts') { page.should have_content "0" }
end

Then /^I should see the trainer's workouts$/ do
  page.should have_content "#{@trainer.username.upcase}'S WORKOUTS"
  page.should have_content @workout.name
end