module CreateUser

  def create_admin_user
    admin = FactoryGirl.create :trainer
    admin.role = "admin"
    admin.save!
  end
end

World CreateUser