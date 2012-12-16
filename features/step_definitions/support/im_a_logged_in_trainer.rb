Given /^I'm a logged in trainer$/ do
  @active_trainer = create :active_trainer
  login @active_trainer
end