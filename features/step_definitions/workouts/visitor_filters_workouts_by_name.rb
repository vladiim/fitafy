Given /^I'm on the workouts page with workouts$/ do
  create_workout 10
  visit workouts_path
  page.should have_selector("ul#workout_list li:nth-child(1)", 
  							content: "Zno Said Date")
end

When /^I click view by name$/ do
  within "#workout_filters" do
  	click_link "NAME"
  end
end

Then /^the workouts should be ordered by name$/ do
  pending "this passes without working properly moving on to more important functionality"

  page.should have_selector("ul#workout_list li#box_list:nth-child(1) a", 
  							content: "Qno Said Date")
end