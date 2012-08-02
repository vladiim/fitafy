module CreateAdmin

  def create_admin
  @admin = FactoryGirl.create :trainer
  @admin.role = "admin"
  @admin.save!
  login @admin
  end
end

World CreateAdmin