require 'open-uri'
require 'digest/md5'

class FacebookUser < ActiveRecord::Base

  # add god_field/auth_info with all oauth data

  attr_accessible :uid, :oauth_token, :oauth_expires_at

  delegate :id, to: :user, prefix: true
  delegate :username, :username=, to: :user
  delegate :email, :email=, to: :user
  delegate :password=, :password, to: :user
  delegate :password_confirmation=, to: :user
  # delegate :avatar, :avatar=, to: :user
  # delegate :remote_avatar_url=, to: :user

  has_one :user

  before_save :format_username, :format_oath_expires_at #, :format_avatar_picture

  def self.from_auth auth
    info  = auth.fetch("info")
    creds = auth.fetch("credentials")

    FacebookUser.find_or_initialize_by_uid(auth.fetch("uid")) do |fb|
      fb.build_user unless fb.user
      fb.uid              = auth.fetch("uid")
      fb.username         = info.fetch("name")
      fb.email            = info.fetch("email")
      # fb.avatar           = info.fetch("image")
      fb.oauth_token      = creds.fetch("token")
      fb.password         = Digest::MD5.hexdigest(creds.fetch("token"))
      fb.password_confirmation = fb.password
      fb.oauth_expires_at = creds.fetch("expires_at")
      fb.provider         = "facebook"
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

  # def format_avatar_picture
  #   self.remote_avatar_url = open(self.avatar).read
  # end

  # def large_profile_picture
  #   url = self.avatar
  #   debugger
  #   remove_point = (url =~ /\?type=/)  # find text after type
  #   url.slice!((remove_point + 6)..-1) # get rid of it
  #   url << "large"                     # replace with large
  # end
end