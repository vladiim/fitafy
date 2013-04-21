require 'spec_helper'

describe InviteRecord do

  context 'db' do
    it { should have_db_column(:sender_id) }
    it { should have_db_column(:receiver_id) }
    it { should have_db_column(:message) }
    it { should have_db_column(:accepted) }
  end

  context "associations" do
    it { should belong_to(:sender).class_name('UserRecord') }
    it { should belong_to(:receiver).class_name('UserRecord') }
  end
end