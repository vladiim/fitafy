require 'spec_helper'

describe 'Unsubscribe from email list', :slow do

  it 'subscribes the user' do
    visit root_path
    sign_up
    @record = UserRecord.last
    @user   = User::Manager.new(@record)
    visit unsubscribe_path(perishable_token: @user.perishable_token)
    page.should have_content CopyGenerator::EmailCopy.unsubscribe
  end
end