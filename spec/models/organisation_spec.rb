require 'spec_helper'

describe Organisation do

  describe 'db' do
  	it { should have_db_column(:name) }
  	it { should have_db_column(:street) }
  	it { should have_db_column(:suburb) }
  	it { should have_db_column(:city) }
  	it { should have_db_column(:state) }
  	it { should have_db_column(:country) }
  	it { should have_db_column(:postcode) }
  end

  describe 'associations' do
    it { should have_many(:profile_organisations) }
  	it { should have_many(:profiles).through(:profile_organisations) }
  end
end
