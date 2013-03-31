require 'spec_helper'

describe 'Visitor goes to homepage' do
  let(:user_record) { UserRecord.last }
  let(:user_email)  { user_record.email }

  before { visit root_path }

  context 'signs up successfully' do
    before { sign_up }

    it 'sends the user a welcome email' do
      last_email.to.should eq [email]
      last_email.subject.should eq CopyGenerator::EmailCopy.signup_subject
    end

    it 'creates a new user with the email' do
      user_email.should eq email
    end

    it 'gives me a success message' do
      page.should have_content CopyGenerator::UserCopy.first_sign_up
    end

    it 'sends the unsubscribe link in the email' do
      last_email.html_part.body.should =~ /#{unsubscribe_path(perishable_token: user_record.perishable_token)}/
    end
  end

  context 'signs up twice' do
    before { sign_up; sign_up }

    it 'returns the UserRecord error' do
      page.should have_content CopyGenerator::UserCopy.error_first_sign_up
      page.should have_content 'has already been taken'
    end
  end
end