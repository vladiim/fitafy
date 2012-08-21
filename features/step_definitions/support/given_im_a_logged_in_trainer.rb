Given /^I'm a logged in trainer$/ do
  @trainer = FactoryGirl.create :trainer
  login @trainer
end