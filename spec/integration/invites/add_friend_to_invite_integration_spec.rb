require 'spec_helper'

describe "Add friend to invite", js: true do
  before { visit invites_path }

  context 'user email adder' do
  	before do
  	  within('.invited-friends-list') do
  	  	fill_in 'friends_name', with: 'NAME'
  	  	fill_in 'friends_email', with: 'friend@email.com'
  	  	click_button 'ADD INVITE'
  	  end
  	end

	it 'adds the friend to the list' do
		page.should have_selector('.invited-friend b.name', text: 'NAME')
	end
  end
end