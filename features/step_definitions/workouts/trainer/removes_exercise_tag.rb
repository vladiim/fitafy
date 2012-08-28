When /^I click on a tag$/ do
  click_link "ABS"
end

When /^I click remove tag$/ do
  within "#tab_sort_by" do
  	click_link "x"
  end
end

Then /^the tag shouldn't be in the url$/ do
  current_url.should_not =~ /abs/
end