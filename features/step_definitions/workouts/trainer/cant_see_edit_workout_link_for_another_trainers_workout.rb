Then /^I shouldn't see the edit workout link$/ do
  page.should_not have_content "EDIT WORKOUT"
end