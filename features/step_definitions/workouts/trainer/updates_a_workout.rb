When /^I click the workout's "(.*?)"$/ do |update_link|
  click_link update_link
end

When /^"(.*?)" I fill in the workout's "(.*?)" with "(.*?)"$/ do |container, form_element, new_detail|
  within container do
    fill_in form_element, with: new_detail
    click_button "UPDATE WORKOUT"
  end
end

Then /^"(.*?)" I should see the workout's updated "(.*?)"$/ do |container, new_detail|
  within container do
    page.should have_content new_detail
  end
end