When /^I click copy workout$/ do
  click_link "CREATE COPY"
end

Then /^I'm prompted to login$/ do
  page.should have_content "Wanna copy a workout? No problems! You just need to login first yo!"
  click_link "Sign up"
end