When /^I click a "(.*?)" workout cta$/ do |cta|
  within("aside.cta_buttons") do
  	click_link cta
  end
end

Then /^the workout popularity "(.*?)" increases$/ do |metric|
  popularity = WorkoutPopularity.find(@workout.workout_popularity.id)
  popularity.send(metric).should eq 1
end