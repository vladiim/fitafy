module CreateUser

  def create_new_user
  	@new_user = create :trainer
  end

  def create_admin_user
    admin        = create :trainer
    admin.role   = "admin"
    admin.active = true
    admin.save!
  end
end

World CreateUser