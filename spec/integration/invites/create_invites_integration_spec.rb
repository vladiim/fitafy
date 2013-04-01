require 'spec_helper'

describe 'Invite my friends to fitafy' do
  let(:first_friend) { 'first@friend.com' }
  let(:second_friend) { 'second@friend.com' }

  context 'signed up user' do
    it 'shows the contact importers', js: true do
      visit invites_path
      page.body.should =~ /email/
    end

    # it 'allows users to invite their Facebook Friends' do
    #   click_link 'IMPORT FACEBOOK FRIENDS'
      
    # end
  end
end