require 'spec_helper'

describe InviteRecord do

  context 'db' do
    it { should have_db_column(:from_id) }
    it { should have_db_column(:to_id) }
    it { should have_db_column(:message) }
    it { should have_db_column(:accepted) }
  end

  context "associations" do
    it { should belong_to(:from).class_name('UserRecord') }
    it { should belong_to(:to).class_name('UserRecord') }
  end
end