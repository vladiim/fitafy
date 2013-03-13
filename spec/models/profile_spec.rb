require 'spec_helper'

describe Profile do
  let(:profile) { Profile.new }
  let(:user)    { MockUser.new }

  describe 'attributes' do
  	it { should have_db_column(:user_id) }
  	it { should have_db_column(:first_name) }
  	it { should have_db_column(:last_name) }
  	it { should have_db_column(:experience) }
  	it { should have_db_column(:hourly_rate) }
  	it { should have_db_column(:url) }
  end

  describe 'relationships' do
    it { should belong_to :user }
    it { should have_many(:profile_organisations) }
    it { should have_many(:organisations).through(:profile_organisations) }
  end
end