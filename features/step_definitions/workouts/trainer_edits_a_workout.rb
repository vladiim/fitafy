Given /^a workout exercise exists$/ do
  FactoryGirl.create :workout_exercise
  @trainer = User.last
  login @trainer
  @workout = Workout.last
end

When /^I'm on the edit workout page$/ do
  visit edit_user_workout_path(@trainer, @workout)
end

Then /^Snapz should give me the "(.*?)" edit workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end