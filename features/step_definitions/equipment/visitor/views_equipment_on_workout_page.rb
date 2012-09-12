Then /^I should see the workout's equipment name$/ do
  page.should have_content @equipment.name.titleize
end