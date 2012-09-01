Given /^I'm on the workout page$/ do
  @workout = create :workout, user_id: @trainer.id
  visit user_workout_path(@trainer.id, @workout)
end

When /^I click download as pdf$/ do
  click_link "DOWNLOAD AS PDF"
end

Then /^I should get a pdf$/ do
  current_url.should eq "http://www.example.com/users/#{@trainer.id}/workouts/#{@workout.id}.pdf"
end