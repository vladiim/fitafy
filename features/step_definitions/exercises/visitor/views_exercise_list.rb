Given /^there are more than one exercise$/ do
  ["ccc", "aaa"].each do |name|
  	FactoryGirl.create :exercise, name: name
  end
end

When /^I visit the exercise list$/ do
  visit root_path
  visit exercises_path
end

Then /^I see the exercise's details$/ do
  page.should have_content "Aaa"
  page.should have_content "Ccc"
end