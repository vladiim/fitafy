require 'open-uri'
require 'digest/md5'

class FacebookUser < ActiveRecord::Base

  attr_accessible :uid, :oauth_token, :oauth_expires_at

  delegate :id,                     to: :user, prefix: true
  delegate :username, :username=,   to: :user
  delegate :email, :email=,         to: :user
  delegate :password=, :password,   to: :user
  delegate :password_confirmation=, to: :user
  delegate :remote_avatar_url=,     to: :user
  delegate :terms_of_service=,      to: :user
  delegate :active=,                to: :user

  has_one :user

  before_save :format_username

  def self.from_auth auth
    info  = auth.fetch("info")
    creds = auth.fetch("credentials")

    FacebookUser.find_or_initialize_by_uid(auth.fetch("uid")) do |fb|
      fb.build_user unless fb.user
      fb.cred_info             = auth
      fb.username              = info.fetch("name")
      fb.email                 = info.fetch("email")
      fb.oauth_token           = creds.fetch("token")
      password                 = Digest::MD5.hexdigest(creds.fetch("token"))
      fb.password              = password
      fb.password_confirmation = password
      fb.terms_of_service      = "true"
      fb.active                = true
      fb.oauth_expires_at      = Time.at(creds.fetch("expires_at").to_i)
      fb.remote_avatar_url     = "http://res.cloudinary.com/hdxvaer2w/image/facebook/w_300,h_300/#{fb.uid}.jpg"
      fb.provider              = "facebook"
    end
  end

  def format_username
    self.username = self.username.downcase.gsub(' ', '-')
    users = User.find_all_by_username(self.username)

    users.each do |user|
      (increment_username && format_username) unless user == self.user
    end
  end

  def increment_username
    increment_position = (self.username =~ /[-][[:digit:]]+$/)    # e.g. facebook-name-3 returns the position of '-3'
    original_number = find_original(increment_position)
    self.username << increment(original_number)
  end

  def find_original increment_position
    increment_position ? self.username.slice!((increment_position + 1)..-1) : nil
  end

  def increment number
    number ? (number.to_i + 1).to_s : "-1"
  end
end