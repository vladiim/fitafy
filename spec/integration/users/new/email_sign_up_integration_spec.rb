require 'spec_helper'

describe 'Visitor goes to homepage' do
  let(:email)      { 'test@email.com' }
  let(:user_email) { UserRecord.last.email }

  before { visit root_path }

  context 'signs up successfully' do
    before do
      fill_in 'user_record_email', with: email
      click_button 'SIGN UP'
    end

    it 'creates a new user with the email' do
      user_email.should eq email
    end

    it 'gives me a success message' do
      page.should have_content CopyGenerator::UserCopy.first_sign_up
    end
  end

  context 'bad email' do
  end
end