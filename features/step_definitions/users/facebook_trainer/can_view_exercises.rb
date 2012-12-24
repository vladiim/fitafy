Given /^I'm on a workout page$/ do
  user       = create :user
  workout    = create :workout, user: user
  workout_ex = create :workout_exercise, workout: workout
  visit_workout(workout)
end

When /^I go to visit an exercise$/ do
  click_link "Liquid"
end

Then /^I should be able to see that exercise$/ do
  within "h1" do
  	page.should have_content "LIQUID"
  end
end