module Invite
  class Manager
  	attr_reader :sender, :receivers, :message, :records

    def initialize(params)
      create_and_add_sender(params.fetch('sender'))
      @message = params.fetch('message')
      create_and_add_receivers(params.fetch('receivers'))
      create_and_add_records
    end

    def send_messages
      records.each { |record| invite_mailer_sender(record.id) }
    end

    def count
      records.length
    end

    private

    def create_and_add_sender(email)
      # debugger
      @sender = UserRecord.find_or_create_by_email(email)
      User::Manager.new(sender).save_invite_sending_user
    end

    def create_and_add_receivers(receivers)
      @receivers = []
      receivers.each { |receiver| create_and_add_receiver receiver }
    end

    def create_and_add_receiver(receiver)
      record = user_record(receiver.fetch('contact'))
      create_receiver record    	
    end

    def create_receiver(record)
      receivers << User::Manager.new(record).save_invited_user
    end

    def create_and_add_records
      @records = []
      receivers.each { |receiver| create_invite_record(receiver) }
    end

    def create_invite_record(receiver)
      records << InviteRecord.create(sender_id: sender.id, receiver_id: receiver.id, message: message)
    end

    def user_record(contact)
      UserRecord.find_or_create_by_email(contact)
    end

    def invite_mailer_sender(record_id)
      Resque.enqueue(InviteMailerSender, record_id)
    end
  end
end