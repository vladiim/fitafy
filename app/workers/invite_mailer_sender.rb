class InviteMailerSender
  @queue = :email_queue

  def self.perform(invite_id)
  	InviteMailer.create(invite_id).deliver
  end
end