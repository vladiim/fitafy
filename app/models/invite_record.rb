class InviteRecord < ActiveRecord::Base
  attr_accessible :from_id, :to_id, :message

  belongs_to :from, class_name: 'UserRecord'
  belongs_to :to,   class_name: 'UserRecord'
end