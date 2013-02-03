Then /^I should see products related to the exercise$/ do
  page.should have_content @product.name
  page.should have_content @product.image
  page.should have_content @product.price
  page.should have_content @product.analytics_link
end