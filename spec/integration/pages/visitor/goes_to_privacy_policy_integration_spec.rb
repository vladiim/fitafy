require 'spec_helper'

describe 'Visitor goes to homepage', :slow do

  context 'and clicks the privacy link' do

    it 'is on the privacy page' do
      visit root_path
      click_privacy_link
      current_path.should eq '/privacy'
    end
  end
end

def click_privacy_link
  within('footer') do
    click_link 'Privacy Policy'
  end  
end