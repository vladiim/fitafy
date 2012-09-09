When /^I click on the same tag twice$/ do
  click_link "ABS"
  click_link "ABS"
end

Then /^the tag should only appear in the params once$/ do
  da_url = "http://www.example.com/users/#{@trainer.username.gsub(/(\[|\,|\/|\')+/, "").gsub(/\s+/, "-").downcase}/workouts/new?muscles[]=abs"
  current_url.should == da_url
end