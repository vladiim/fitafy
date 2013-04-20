require 'spec_helper'

describe 'Visitor goes to homepage', :slow do

  context "and clicks the TOS link" do

    it 'then is on the TOS page' do
      visit root_path
      click_t_and_c_link
   	  current_path.should eq '/terms_of_service'
    end
  end
end

def click_t_and_c_link
  within('footer') do
    click_link 'Terms & Conditions'
  end
end