Given /^I'm on a new equipment page$/ do
  visit new_equipment_path
end

When /^I fill in the equipment form$/ do
  fill_in "equipment_name", with: "silver rings"
  click_button "CREATE EQUIPMENT"
end

Then /^Snapz should give the created equipment message$/ do
  page.should have_content SnapzSayz::EquipmentSpeak.create
end