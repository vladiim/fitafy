Given /^I'm on the workout page$/ do
  @workout = create :workout, user_id: @active_trainer.id
  visit_workout(@workout)
end

When /^I click download as pdf$/ do
  click_link "DOWNLOAD AS PDF"
end

Then /^I should get a pdf$/ do
  p "USERNAME::: #{@active_trainer.username}"
  current_url.should include "#{@workout.id}-#{@workout.name.parameterize}.pdf"
end