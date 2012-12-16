When /^I confirm my email$/ do
  @trainer.reset_perishable_token!
  visit "activations/#{@trainer.perishable_token}/edit"
end

Then /^I'm signed in automagically$/ do
  within ".navbar" do
  	page.should have_content @trainer.username.upcase
  end
end