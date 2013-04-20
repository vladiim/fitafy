require 'spec_helper'

describe UserRecord do

  context 'db' do
    it { should have_db_column(:email) }
    it { should have_db_column(:subscribed) }
    it { should have_db_column(:perishable_token) }
  end

  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value('blah@email.com').for(:email) }
    it { should_not allow_value('blah@email').for(:email) }
  end

  context "associations" do
    it { should have_many(:invite_records) }
  end
end