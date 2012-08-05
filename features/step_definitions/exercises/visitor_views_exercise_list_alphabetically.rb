Given /^there are more than one exercise$/ do
  ["ccc", "aaa", "bbb"].each do |name|
  	FactoryGirl.create :exercise, name: name
  end
end

When /^I visit the exercise list$/ do
  visit root_path
  visit exercises_path
end

Then /^the exercises should be in alphabetical order$/ do
  exercise_1 = find "tbody#exercises_list tr:nth-child(1) td a"
  exercise_1.should have_content "Aaa"

  exercise_2 = find "tbody#exercises_list tr:nth-child(2) td a"
  exercise_2.should have_content "Bbb"

  exercise_3 = find "tbody#exercises_list tr:nth-child(3) td a"
  exercise_3.should have_content "Ccc"
end