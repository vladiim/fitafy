class UserRecord < ActiveRecord::Base
  attr_accessible :email

  validates :email, presence: true, uniqueness: true, email: true

  has_many :invite_records, foreign_key: 'from_id', dependent: :destroy
  has_many :invite_records, foreign_key: 'to_id',   dependent: :destroy
end