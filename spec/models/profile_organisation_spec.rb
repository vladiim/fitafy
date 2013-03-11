require 'spec_helper'

describe ProfileOrganisation do

  describe 'db' do
  	it { should have_db_column(:profile_id) }
  	it { should have_db_column(:organisation_id) }
  end

  describe 'associations' do
  	it { should belong_to :profile }
  	it { should belong_to :organisation }
  end
end
