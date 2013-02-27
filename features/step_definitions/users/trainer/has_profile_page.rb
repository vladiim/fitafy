When /^I visit my profile page$/ do
  within('.navbar') do
  	click_link 'PROFILE'
  end
end

Then /^I should see my account details$/ do
  page.should have_content @trainer.username.upcase
end