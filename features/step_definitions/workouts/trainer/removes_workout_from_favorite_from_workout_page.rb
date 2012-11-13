Given /^I've favorited a workout$/ do
  visit workouts_path
  click_link @workout.name
  click_link "ADD TO FAVORITES"
end

When /^I click remove favorite$/ do
  click_link "REMOVE FROM FAVORITES"
end

Then /^the workout shouldn't be one of my favorites$/ do
  @trainer.favorite_workouts.each do |favorite_workout|
  	favorite_workout.workout_id.should_not eq @workout.id
  end
end

Then /^snapz should tell me I've relmoved the workout from my favorites$/ do
  page.should have_content "That Workout is Off. The. Radaaar."
end