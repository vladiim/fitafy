Given /^I'm a logged in trainer$/ do
  @trainer = create :trainer
  login @trainer
end