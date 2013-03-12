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
  end

  describe '#name' do
    let(:result) { profile.name }

    context "with first and last name" do
      before do
        profile.first_name = 'FIRST'
        profile.last_name  = 'LAST'
      end

      it 'returns first name then last name' do
        result.should eq 'FIRST LAST'
      end
    end

    context "no names" do
      it 'returns No name on record' do
        result.should eq 'No name on record'
      end
    end

    context "first_name" do
      before { profile.first_name = 'FIRST' }

      it 'returns the first name' do
        result.should eq 'FIRST'
      end
    end

    context "last_name" do
      before { profile.last_name = 'LAST' }

      it "returns the last name" do
        result.should eq 'LAST'
      end
    end
  end

  describe '#org_name' do
    let(:org)    { OpenStruct.new name: 'ORG NAME' }
    let(:result) { profile.org_name }
    before       { mock(profile).organisation { org } }

    it 'returns the organisation name' do
      result.should eq 'ORG NAME'
    end
  end
end