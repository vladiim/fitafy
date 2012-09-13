class FacebookUser < User

  def self.update_or_create auth
    User.where("uid = ?", auth.uid).first_or_initialize.tap do |user|
      user.provider         = auth.provider
      user.uid              = auth.uid
      user.email            = auth.info.email
      user.username         = user.username ? user.username : auth.info.name
      user.oauth_token      = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end