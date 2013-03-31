require 'spec_helper'

describe 'Invite my friends to fitafy' do
  context 'signed up user' do
    before { sign_up }

    it 'allows users to invite their Facebook Friends' do
      click_link 'FACEBOOK FRIENDS'
      
    end
  end

  context 'unsiged user' do
    
  end
end