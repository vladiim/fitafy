When /^I click the delete equipment link$/ do
  click_link "DELETE EQUIPMENT"
end

Then /^the equipment should be gone$/ do
  Equipment.last.should_not be
end

Then /^Snapz should give the deleted equipment message$/ do
  page.should have_content SnapzSayz::EquipmentSpeak.delete
end