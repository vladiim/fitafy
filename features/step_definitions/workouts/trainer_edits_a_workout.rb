Given /^I want to update a workout's details$/ do
  # express the regexp above with the code you wish you had
end

# When I'm on the edit workout page  

Then /^Snapz should give me the "(.*?)" edit workout message$/ do |snapz_sayz|
  page.should have_content snapz_sayz
end