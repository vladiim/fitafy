class InviteMailer < ActionMailer::Base
  default from: 'vlad@fitafy.com'

  def send_invite(invite_id)
    @invite_record = InviteRecord.find(invite_id)
    receiver       = UserRecord.find(@invite_record.receiver_id)
    @sender        = UserRecord.find(@invite_record.sender_id)
    @url           = "#{host}"
  	mail to: receiver.email, subject: CopyGenerator::EmailCopy.invite_subject(@sender.email)
  end

  private

  def host
  	if Rails.env == 'test'
  	  'www.example.com'
  	elsif Rails.env == 'development'
  	  'localhost:3000'
  	else
  	  'www.fitafy.com'
  	end
  end
end