Given /^I'm not an administrator$/ do
  #
end

When /^I try to create a new exercise$/ do
  visit root_path
end

Then /^I shouldn't see links to exercises$/ do
  page.should_not have_content "EXERCISES"
  page.should_not have_content "NEW EXERCISES"
end