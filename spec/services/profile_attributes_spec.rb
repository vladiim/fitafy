require_relative '../spec_helper_lite'
require_relative '../../app/services/profile_attributes'

describe ProfileAttributes do

  let(:profile)      { profile_attr.profile }
  let(:profile_attr) { ProfileAttributes.new(1) }

  describe '#name' do
    let(:result) { profile_attr.name }

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

  describe '#orgs' do
    let(:result) { profile_attr.orgs }

    context "with organisations" do
      let(:organisations) { ['ORGANISATIONS'] }
      before { mock(profile).organisations.times(2) { organisations } }

      it 'returns the organisations' do
        result.should eq ['ORGANISATIONS']
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisation' do
        result.class.should eq EmptyOrganisation
      end
    end
  end

  class Profile
    def self.find(id)
      OpenStruct.new
    end
  end

  class EmptyOrganisation; end
end