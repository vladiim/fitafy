Given /^more than one exercise$/ do
  @push_up = create :exercise, name: "push up", muscle_list: "abs, biceps"
  @chin_up = create :exercise, name: "chin up", muscle_list: "abs, biceps"
  @dips    = create :exercise, name: "dips",    muscle_list: "biceps, shoulders"
  @trainer = create :user
  login @trainer
end

When /^I click on more than one tag$/ do
  visit new_user_workout_path(@trainer)
  click_link "BICEPS"
  click_link "ABS"
end

Then /^I should see the exercise filtered by the tags$/ do
  within "#exercise_list" do
  	page.should have_css "tr",    text: "Push Up"
  	page.should have_css "tr",    text: "Chin Up"
  	page.should have_no_css "tr", text: "Dips"
  end
end