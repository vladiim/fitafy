require 'spec_helper'

describe 'Visitor goes to homepage' do
  before { visit root_path }
  context "and clicks the TOS link" do
    before do
   	  # save_and_open_page
   	  within('footer') do
   	    click_link 'Terms & Conditions'
   	  end
    end

    it 'then is on the TOS page' do
   	  current_path.should eq '/terms_of_service'
    end
  end
end