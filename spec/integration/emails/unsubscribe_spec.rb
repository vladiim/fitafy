require 'spec_helper'

describe 'Unsubscribe from email list' do

  before do
  	visit root_path
  	sign_up
  	@record = UserRecord.last
  	@user   = User::Manager.new(@record)
  	visit unsubscribe_path(perishable_token: @user.perishable_token)
  end

  it 'gives an unsubscribe message on the page' do
    page.should have_content CopyGenerator::EmailCopy.unsubscribe
  end
end