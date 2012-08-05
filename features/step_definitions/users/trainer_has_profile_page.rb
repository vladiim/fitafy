When /^I visit my profile page$/ do
  click_link @trainer.username.upcase
end

Then /^I should see my account details$/ do
  page.should have_content @trainer.username.upcase
end