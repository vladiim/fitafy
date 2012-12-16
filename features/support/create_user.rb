module CreateUser

  def create_new_user
  	@new_user = create :trainer
  end

  def create_admin_user
    # admin = FactoryGirl.create :trainer
    admin = create :trainer
    admin.role = "admin"
    admin.save!
  end
end

World CreateUser