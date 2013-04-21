class UserRecord < ActiveRecord::Base
  attr_accessible :email

  validates :email, presence: true, uniqueness: true, email: true

  has_many :invite_records, foreign_key: 'sender_id',   dependent: :destroy
  has_many :invite_records, foreign_key: 'receiver_id', dependent: :destroy
end