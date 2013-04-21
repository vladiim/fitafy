class InviteRecord < ActiveRecord::Base
  attr_accessible :sender_id, :receiver_id, :message

  belongs_to :sender,   class_name: 'UserRecord'
  belongs_to :receiver, class_name: 'UserRecord'
end