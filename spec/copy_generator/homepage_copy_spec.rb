require_relative '../spec_helper_lite'
require_relative '../../lib/modules/copy_generator/homepage_copy'

describe 'HomepageCopy' do
  let(:copy) { CopyGenerator::HomepageCopy }

  describe '.features' do
  	# before { mock(copy).regular_hard_grey_icon_image_url.times(6) { 'IMAGE' } }

  	it 'returns an array of features' do
  	  copy.features[0].title.should eq copy.feature_one.title
  	  copy.features[0].image.should eq copy.feature_one.image
  	  copy.features[0].copy.should eq copy.feature_one.copy
  	end
  end
end