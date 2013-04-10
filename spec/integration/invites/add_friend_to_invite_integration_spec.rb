require 'spec_helper'

describe "Add friend to invite", js: true do
  before { visit invites_path }

  context 'add name and email' do
  	before do
  	  within('.invited-friends-list') do
  	  	fill_in 'friends_name', with: 'NAME'
  	  	fill_in 'friends_email', with: 'friend@email.com'
  	  	click_button 'ADD FRIEND'
  	  end
  	end

	  it 'adds the friend to the list' do
		  page.should have_friend
	  end

    context 'click [x]' do
      it 'removes the friend from the list' do
        within('.invited-friends-list') do
          click_link 'X'
          page.should_not have_friend
        end
      end
    end
  end
end

def have_friend
  have_selector('.invited-friend b.name', text: 'NAME')
end