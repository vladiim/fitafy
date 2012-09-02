Given /^the trainer has workouts, some of them favorites$/ do
  @non_favorite = create :workout, user_id: @trainer.id
  3.times do
  	create :favorite_workout, user: @trainer
  end
  @favorites = @trainer.favorite_workouts
  visit user_path(@trainer)
end

When /^I click on favorites$/ do
  click_link "3 Favorites"
end

Then /^I should see their favorites$/ do
  @favorites.each do |fav|
  	within "section.user_workouts" do
  	  workout = Workout.find fav.workout_id
  	  page.should have_content workout.name.titleize
    end
  end
end

Then /^I shouldn't see their other workouts$/ do
  within "section.user_workouts" do
    page.should have_no_content @non_favorite.name
  end
end