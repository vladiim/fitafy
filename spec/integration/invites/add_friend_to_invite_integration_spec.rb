require 'spec_helper'

describe "Add friend to invite", js: true do
  before { visit invites_path }

  describe "change the message" do
    before do
      find("#edit_message").click
      fill_in "message_form", with: "NEW MESSAGE"
      within("#invite_message") do
        click_button "SAVE"
      end
    end

    it "should description" do
      within("#invite_message") do
        page.should have_content "NEW MESSAGE"
      end
    end
  end

  describe 'add name and email' do
  	before do
  	  within('.invited-friends-list') do
  	  	fill_in 'friends_name', with: 'NAME'
  	  	fill_in 'friends_email', with: 'friend@email.com'
  	  	click_button 'ADD FRIEND'
  	  end
  	end

	  it 'adds the friend to the list' do
		  page.should have_friend
      page.should have_friends_count
	  end

    describe 'click [x]' do
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

def have_friends_count
  have_selector('span.friend-count', text: '1')
end