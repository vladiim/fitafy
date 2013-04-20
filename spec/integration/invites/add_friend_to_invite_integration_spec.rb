require 'spec_helper'

describe "Add friend to invite", js: true do

  describe "change the message", :slow do

    it "updates and shows the new message" do
      visit invites_path
      change_message
      within("#invite_message") do
        page.should have_content "NEW MESSAGE"
      end
    end
  end

  describe 'add name and email', :slow do

	  it 'adds the friend to the list' do
      visit invites_path
      add_friend
		  page.should have_friend
      page.should have_friends_count
	  end

    describe 'click [x]' do
      it 'removes the friend from the list' do
        visit invites_path
        add_friend
        within('.invited-friends-list') do
          click_link 'X'
          page.should_not have_friend
        end
      end
    end
  end

  describe "and sends the invites" do
    it 'sends the invite', :focus do
      visit root_path
      sign_up
      add_friend

      # !!!!!!!!!!!!!!!!!!!!!!!!!
      # fill_in_captcha
      # !!!!!!!!!!!!!!!!!!!!!!!!!

      click_button "SEND INVITES"

      # sends the correct message
      last_email.html_part.body.should =~ /Hi NAME! I just signed up/

      # sends the email to the friend
      last_email.to.should eq ['friend@email.com']

      # shows the correct success flash message
      page.should have_content CopyGenerator::InviteCopy.invites_sent(1)

      # clears the friend's list
      within('.invited-friends-list') do
        page.should_not have_friends
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

def change_message
  find("#edit_message").click
  fill_in "message_form", with: "NEW MESSAGE"
  within("#invite_message") do
    click_button "SAVE"
  end
end

def add_friend
  within('.invited-friends-list') do
    fill_in 'friends_name', with: 'NAME'
    fill_in 'friends_email', with: 'friend@email.com'
    click_button 'ADD FRIEND'
  end
end