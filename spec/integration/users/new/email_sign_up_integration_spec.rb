require 'spec_helper'

describe 'Visitor goes to homepage', :slow do
  let(:user_record) { UserRecord.last }
  let(:user_email)  { user_record.email }

  context 'signs up successfully' do

    it 'signs up successfully' do
      visit root_path
      sign_up
      # sends the user a welcome email
      last_email.to.should eq [email]
      last_email.subject.should eq CopyGenerator::EmailCopy.signup_subject

      # creates a new user with the email
      user_email.should eq email

      # gives me a success message
      page.should have_content CopyGenerator::UserCopy.first_sign_up

      # sends the unsubscribe link in the email
      last_email.html_part.body.should =~ /#{unsubscribe_path(perishable_token: user_record.perishable_token)}/

      # redircts to the invites_path
      current_path.should eq invites_path
    end
  end

  context 'signs up twice' do

    it 'returns the UserRecord error' do
      visit root_path; sign_up; visit root_path; sign_up
      page.should have_content CopyGenerator::UserCopy.error_first_sign_up
      page.should have_content 'has already been taken'
    end
  end
end