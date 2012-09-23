class FacebookUser < ActiveRecord::Base

  # add god_field/auth_info with all oauth data

  attr_accessible :uid, :oauth_token, :oauth_expires_at

  delegate :id, to: :user, prefix: true
  delegate :username, :username=, to: :user
  delegate :email, :email=, to: :user

  has_one :user

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
    self.username = self.username.downcase.gsub(' ', '-')
    users         = User.find_all_by_username(self.username)

    users.each do |user|
      (increment_username && format_username) unless user == self.user
    end
  end

  def increment_username
    increment_at = (self.username =~ /[-][[:digit:]]+$/)    # e.g. facebook-name-3 returns the position of '-3'
    if increment_at                                         # safeguard against incorrect username's being passed in
      number = self.username.slice!((increment_at + 1)..-1) # get the number e.g. above would return '3'
      new_number = (number.to_i + 1).to_s
      self.username << new_number
    end
  end

  def format_oath_expires_at
    self.oauth_expires_at = Time.at(self.oauth_expires_at)
  end
end