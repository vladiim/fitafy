Given /^I've created a new workout$/ do
  @workout = @trainer.build_workout(name: "MY NEW WORKOUT")
  @workout.save
end

When /^I go to the new workout's page$/ do
  visit user_workout_path(@trainer, @workout)
end

Then /^I should be able to edit the workout's details$/ do
  within "aside" do
  	page.should have_css("a", text: "Edit workout level")
  	page.should have_no_css("a", text: "ADD TO FAVORITES")
  	page.should have_no_css("a", text: "COPY WORKOUT")
  	page.should have_css("a", text: "DOWNLOAD AS PDF")
  end
end

Then /^I should see the workout owner CTA buttons$/ do
  page.should have_css("a", text: "ADD EXERCISE")
end