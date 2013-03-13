class Profile < ActiveRecord::Base
  attr_accessible :hourly_rate, :avatar, :experience, :first_name,
                  :last_name, :url, :user_id

  belongs_to :user
  has_many   :profile_organisations
  has_many   :organisations, through: :profile_organisations
end