require 'spec_helper'

describe 'Visitor goes to homepage' do
  it 'and sees homepage copy' do
    visit root_path
    page.should have_content h1_title
  end
end

def h1_title
  'WE HELP PERSONAL TRAINERS GET NEW CLIENTS'
end