Given /^I'm on the workout page$/ do
  @workout = create :workout, user_id: @active_trainer.id
  visit user_workout_path(@active_trainer.id, @workout)
end

When /^I click download as pdf$/ do
  click_link "DOWNLOAD AS PDF"
end

Then /^I should get a pdf$/ do
  current_url.should eq "http://www.example.com/users/#{@active_trainer.id}/workouts/#{@workout.id}.pdf?id=#{@workout.id}"
end