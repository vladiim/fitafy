Given /^there's alphabetical exercises$/ do
  ["cccc", "aaaa", "bbbb"].each do |name|
    FactoryGirl.create :exercise, name: "#{name} #{rand(10000).to_s}", muscle_list: "abs"
  end
end

When /^I visit the new workout page$/ do
  click_link "NEW WORKOUT"
end

Then /^I should see them in alphabetical order$/ do
  page.should have_selector "tr:nth-child(1)", content: "Aaaa"
  page.should have_selector "tr:nth-child(2)", content: "Bbbb"
  page.should have_selector "tr:nth-child(3)", content: "Cccc"
end