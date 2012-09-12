When /^I click add workout to favorite$/ do
  click_link "ADD TO FAVORITES"
end

Then /^the workout should be added to my favorites$/ do
  @user.favorite_workouts.first.workout_id.should eq @workout.id
end

Then /^snapz should tell me I've added a workout to my favorite$/ do
  page.should have_content "Ain't that funny? I really like that workout too! Added to your favorites."
end