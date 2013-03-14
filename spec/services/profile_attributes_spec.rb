require_relative '../spec_helper_lite'
require_relative '../../app/services/profile_attributes'
require_relative '../../app/services/empty_organisation'

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

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisations) { ['ORGANISATIONS'] }
      before { mock(profile).organisations { organisations } }

      it 'returns the organisations' do
        result.should eq ['ORGANISATIONS']
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisation' do
        result.first.class.should eq EmptyOrganisation
      end
    end
  end

  describe '#org_name' do
    let(:result) { profile_attr.org_name }

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisation)  { OpenStruct.new name: 'ORG NAME' }
      let(:organisations) { [organisation] }

      before { mock(profile).organisations { organisations } }

      it 'returns the organisations name' do
        result.should eq 'ORG NAME'
      end
    end

    context "without an organisations name" do
      let(:organisations) { [] }

      it 'returns an empty organisation' do
        result.should eq 'No gym listed'
      end
    end
  end

  describe '#street' do
    let(:result) { profile_attr.street }

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisation)  { OpenStruct.new street: 'ORG STREET' }
      let(:organisations) { [organisation] }

      before { mock(profile).organisations { organisations } }

      it 'returns the organisations street' do
        result.should eq 'ORG STREET'
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisations street' do
        result.should eq ''
      end
    end
  end

  describe '#city' do
    let(:result) { profile_attr.city }

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisation)  { OpenStruct.new city: 'ORG CITY' }
      let(:organisations) { [organisation] }

      before { mock(profile).organisations { organisations } }

      it 'returns the organisations city' do
        result.should eq 'ORG CITY'
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisations city' do
        result.should eq ''
      end
    end
  end

  describe '#state' do
    let(:result) { profile_attr.state }

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisation)  { OpenStruct.new state: 'ORG STATE' }
      let(:organisations) { [organisation] }

      before { mock(profile).organisations { organisations } }

      it 'returns the organisations state' do
        result.should eq 'ORG STATE'
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisations state' do
        result.should eq ''
      end
    end
  end

  describe '#postcode' do
    let(:result) { profile_attr.postcode }

    before { mock(profile).organisations.times(2) { organisations } }

    context "with organisations" do
      let(:organisation)  { OpenStruct.new postcode: 'ORG POSTCODE' }
      let(:organisations) { [organisation] }

      before { mock(profile).organisations { organisations } }

      it 'returns the organisations postcode' do
        result.should eq 'ORG POSTCODE'
      end
    end

    context "without an organisation" do
      let(:organisations) { [] }

      it 'returns an empty organisations postcode' do
        result.should eq ''
      end
    end
  end

  describe '#country' do
    let(:result) { profile_attr.country }

    it 'returns the profile country' do
      result.should eq 'COUNTRY'
    end
  end

  class Profile
    def self.find(id)
      OpenStruct.new country: 'COUNTRY'
    end
  end
end