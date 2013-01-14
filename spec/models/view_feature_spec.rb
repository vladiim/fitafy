require_relative '../spec_helper_lite'
require_relative '../../app/models/view_feature.rb'

describe ViewFeature do
  let(:viewer)  { ViewFeature.new user, feature }
  let(:feature) { 'FEATURE' }

  context "user is staff" do
    let(:user) { OpenStruct.new staff?: true, features: {} }

    describe '#initialize' do
      it 'sets the local variables' do
      	viewer.user.should eq user
      	viewer.feature.should eq 'feature'
      end
    end

    describe 'update_features' do
      let(:result) { viewer.update_features }

      context 'no features' do
        it 'instantiates hash and adds the feature' do
          result
          user.features.should eq({ 'feature' => 'true' })
        end
      end

      context 'with features' do
        before { user.features = { 'first f' => 'true' } }

        it 'adds the feature to the exsisting ones' do
          result
          user.features.should eq({ 'first f' => 'true', 'feature' => 'true' })
        end
      end

      context 'feature is in the users features' do
        before do
          user.features = { 'first f' => 'true', 'feature' => 'true' }
          mock(user).destroy_key(:features, 'feature') { user.features = { 'first f' => 'true' } }
        end

        it 'removes the feature to the exsisting ones' do
          result
          user.features.should eq({ 'first f' => 'true' })
        end
      end
    end
  end

  context "user is not staff" do
    let(:user) { OpenStruct.new staff?: false }

    describe '#initialize' do
      it 'doesnt sets the local variables' do
      	viewer.user.should_not eq user
      	viewer.feature.should_not eq 'feature'
      end
    end
  end
end