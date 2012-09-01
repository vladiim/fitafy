Given /^the trainer has workouts, some of them favorites$/ do
  @non_favorite = create :workout, user_id: @trainer.id
  @favorites = @trainer.favorite_workouts
  3.times do
  	workout = create :workout
  	@favorites << workout
  end
  @favorites.each { |fav| @trainer.favorites << fav }
end

When /^I click on favorites$/ do
  click_link "3 Favorites"
end

Then /^I should see their favorites$/ do
  @favorites.each do |fav|
  	within "section.user_workouts" do
  	  page.should have_content fav.name
    end
  end
end

Then /^I shouldn't see their other workouts$/ do
  within "section.user_workouts" do
    page.should have_no_content @non_favorite.name
  end
end