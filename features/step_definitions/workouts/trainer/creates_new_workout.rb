Given /^I've created a new workout with 2 workout exercises$/ do
  @workout = @active_trainer.build_workout(name: "MY NEW WORKOUT")
  @workout.save
  2.times { create :workout_exercise, workout_id: @workout.id }
end

When /^I go to the new workout's page$/ do
  visit_workout @workout
end

Then /^I should be able to edit the workout's details$/ do
  within "aside.cta_buttons" do
  	page.should have_no_css("a", text: "ADD TO FAVORITES")
  	page.should have_no_css("a", text: "COPY WORKOUT")
  	page.should have_css("a", text: "DOWNLOAD AS PDF")
  end
end

Then /^I should see the workout owner CTA buttons$/ do
  page.should have_css("a", text: "ADD EXERCISE")
  page.should have_css("a.change_workout_exercise_order")
  page.should have_css("a.show_workout_exercise_form")
end