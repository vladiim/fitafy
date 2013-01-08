When /^I delete the workout by clicking "(.*?)"$/ do |delete_workout_link|
  click_link delete_workout_link
end

Then /^Snapz should give the "(.*?)" deleted workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end

Then /^that workout shouldn't exsist$/ do
  Workout.find_by_name("no said date").should_not be
end

Then /^the trainer should still exsist$/ do
  trainer = User.find(@active_trainer.id)
  trainer.should be
end