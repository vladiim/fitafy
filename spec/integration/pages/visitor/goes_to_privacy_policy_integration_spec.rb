require 'spec_helper'

describe 'Visitor goes to homepage' do
  before { visit root_path }

  context 'and clicks the privacy link' do
  	before do
  	  within('footer') do
  	  	click_link 'Privacy Policy'
  	  end
  	end

    it 'is on the privacy page' do
      current_path.should eq '/privacy'
    end
  end
end