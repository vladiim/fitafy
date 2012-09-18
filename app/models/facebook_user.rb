class FacebookUser

  attr_reader :auth
  attr_accessor :user

  def initialize auth
    @auth = auth
  end

  def update_or_create
    user = find_user_by_uid || User.new
    set_user_details
  end

  def find_user_by_uid
    user = User.find_by_uid auth.uid
  end

  def set_user_details
    set_unique_username
    set_uid
    set_email
    set_provider
    set_oauth_token
    set_oauth_expires_at
    user.save!
  end

  def set_unique_username username=auth.info.name
    username = username.downcase.gsub(' ', '-')
    if username_unique? username
      return user.username = username
    else
      change_username username
    end
  end

  def username_unique? username
    if User.find_by_username username
      false
    else
      true
    end
  end

  def change_username username
    if username[-2..-1] =~ /-[n]/
      num = username[-1]
      num = Integer(num) + 1
      username[-1].replace(num)
    else
      username << "-1"
    end
    set_unique_username username
  end

  def set_uid
    user.uid = auth.uid
  end

  def set_email
    user.email = auth.info.email
  end

  def set_provider
    user.provider = auth.provider
  end

  def set_oauth_token
    user.oauth_token = auth.credentials.token
  end

  def set_oauth_expires_at
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  end

  # def self.update_or_create auth
  #   User.where("uid = ?", auth.uid).first_or_initialize.tap do |user|
  #     user.provider         = auth.provider
  #     user.uid              = auth.uid
  #     user.email            = auth.info.email
  #     user.username         = user.username ? user.username : auth.info.name
  #     user.oauth_token      = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end
end