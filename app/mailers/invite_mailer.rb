class InviteMailer < FitafyMailer
  default from: 'vlad@fitafy.com'

  def send_invite(invite_id)
    connect_to_database!
    @invite_record = InviteRecord.find(invite_id)
    receiver       = UserRecord.find(@invite_record.receiver_id)
    @sender        = UserRecord.find(@invite_record.sender_id)
    @url           = "#{host}"
  	mail to: receiver.email, subject: CopyGenerator::EmailCopy.invite_subject(@sender.email)
  end
end