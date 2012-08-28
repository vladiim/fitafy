Given /^a workout exercise exists$/ do
  @workout = FactoryGirl.create :workout, user_id: @trainer.id
  FactoryGirl.create :workout_exercise, workout_id: @workout.id
end

When /^I'm on the edit workout page$/ do
  visit edit_user_workout_path(@trainer, @workout)
end

Then /^Snapz should give me the "(.*?)" edit workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end