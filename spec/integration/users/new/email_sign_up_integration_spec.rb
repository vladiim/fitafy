require 'spec_helper'

describe 'Visitor goes to homepage' do
  let(:email)      { 'test@email.com' }
  let(:user_email) { UserRecord.last.email }

  before { visit root_path }

  context 'signs up successfully' do
    before { sign_up }

    # it 'creates a new user with the email' do
    #   user_email.should eq email
    # end

    # it 'gives me a success message' do
    #   page.should have_content CopyGenerator::UserCopy.first_sign_up
    # end

    # it 'sends the user a welcome email' do
    #   last_email.to.should eq [email]
    #   last_email.subject.should eq CopyGenerator::EmailCopy.signup_subject
    # end
  end

  context 'signs up twice' do
    before { sign_up; sign_up }

    it 'returns the UserRecord error' do
      page.should have_content CopyGenerator::UserCopy.error_first_sign_up
      page.should have_content 'has already been taken'
    end
  end

  context 'bad email' do
    # let(:bad_email) { 'test@email' }

    # before do
    #   fill_in 'user_record_email', with: bad_email
    #   click_button 'SIGN UP'
    # end
  end
end

def sign_up
  fill_in 'user_record_email', with: email
  click_button 'SIGN UP'
end