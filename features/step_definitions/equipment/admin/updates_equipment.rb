Given /^I'm on an exsisting equipment's edit page$/ do
  visit edit_equipment_path(@equipment)
end

When /^I change the equipment's name$/ do
  fill_in "equipment_name", with: "butter knives"
  click_button "UPDATE EQUIPMENT"
end

Then /^I should see the new name on the exercise's page$/ do
  within "h1" do
    page.should have_content "BUTTER KNIVES"
  end
end

Then /^Snapz should given me the updated the equipment message$/ do
  page.should have_content SnapzSayz::EquipmentSpeak.update
end