class FacebookUser < ActiveRecord::Base

  # add god_field/auth_info with all oauth data

  attr_accessible :uid, :oauth_token, :oauth_expires_at

  delegate :id, to: :user, prefix: true
  delegate :username, :username=, to: :user
  delegate :email, :email=, to: :user

  belongs_to :user

  before_save :format_username, :format_oath_expires_at

  def self.from_auth auth
    info  = auth.fetch("info")
    creds = auth.fetch("credentials")

    FacebookUser.find_or_initialize_by_uid(auth.fetch("uid")) do |fb|
      fb.build_user
      fb.uid              = auth.fetch("uid")
      fb.username         = info.fetch("name")
      fb.email            = info.fetch("email")
      fb.oauth_token      = creds.fetch("token")
      fb.oauth_expires_at = creds.fetch("expires_at")
      fb.provider         = "facebook"
    end
  end

  def format_username
    username = self.username.downcase.gsub(' ', '-')
    user     = User.find_by_username(username)

    if user
      user == self.user ? username : increment_username
    end
  end

  def format_oath_expires_at
    self.oauth_expires_at = Time.at(self.oauth_expires_at)
  end
end