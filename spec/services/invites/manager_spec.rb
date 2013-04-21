require_relative '../../spec_helper_lite'
require_relative '../../../app/models/invite/manager'

class UserRecord; end
module User; class Manager; end; end

describe Invite::Manager do
  let(:manager)  { Invite::Manager.new(params) }
  let(:params)   { { "sender"=>sender_email, "receivers"=>receivers, "message"=>message } }


  let(:sender)       { OpenStruct.new id: 1 }
  let(:receiver)     { OpenStruct.new id: 1 }
  let(:record)       { OpenStruct.new id: 1, message: 'MESSAGE' }
  let(:user_manager) { Object.new }

  before { stub_creating_user; stub_creating_invite }

  describe "#initialize" do
  	it "sets the message variable" do
  	  manager.message.should eq message
  	end

    it "finds or creates the sender" do
      manager.sender.should eq sender
    end

    it "finds or creates each receiver" do
      manager.receivers.should eq [receiver]
    end

    it "creates an invite for each invite receiver" do
      manager.records.count.should eq 1
    end

    it "sets the invites variables correctly" do
      manager.records[0].message.should eq 'MESSAGE'
    end
  end

  describe "#send_messages" do
  	class InviteMailerSender; end
    module Resque; end
    before { mock_invite_mailer_sender }

    it "sets up the invite mailer sender" do
      manager.send_messages.should be
    end
  end
end

def stub_creating_user
  stub(UserRecord).find_or_create_by_email(anything) { true }
  stub(User::Manager).new(anything) { user_manager }
  stub(user_manager).save_invited_user { receiver }
  stub(user_manager).save_invite_sending_user { sender }
end

def stub_creating_invite
  stub(InviteRecord).create(anything) { record }
end

def mock_invite_mailer_sender
  mock(Resque).enqueue(InviteMailerSender, 1) { true }
end

def receivers
  [{"name"=>"blah", "contact"=>"blah@emi.com"}]
end

def sender_email
  "me@email.com"
end

def message
  'MESSAGE'
end