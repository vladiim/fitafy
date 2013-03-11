Given /^a trainer has a complete profile$/ do
  @trainer = create(:active_trainer)
  @profile = @trainer.profile
end