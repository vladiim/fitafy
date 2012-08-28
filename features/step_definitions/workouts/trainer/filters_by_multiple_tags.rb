When /^I click on more than one tag$/ do
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