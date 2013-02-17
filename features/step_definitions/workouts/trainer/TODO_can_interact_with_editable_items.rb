# When /^I hover over the "(.*?)" editable item$/ do |editable_item|
#   @item = page.find(editable_item)
#   hover_over editable_item
# end

# Then /^I can see the "(.*?)" edit link$/ do |edit_link|
#   # save_and_open_page
#   link = page.find("a.show_workout_form#{edit_link}")
#   link.should_not have_css('.hidden')
#   @item.should have_css('.editable')
# end