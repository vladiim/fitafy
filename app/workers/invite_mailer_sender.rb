class InviteMailerSender
  @queue = :email_queue

  def self.perform(invite_id)
  	InviteMailer.send_invite(invite_id).deliver
  end
end