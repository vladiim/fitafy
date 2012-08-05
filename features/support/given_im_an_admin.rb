Given /^I'm an admin$/ do
  create_admin_user
  @admin = User.last
  login @admin
end