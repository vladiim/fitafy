require_relative '../spec_helper'

describe User do
  subject { create_valid_user }

  def create_valid_user
    User.new(username:     			 "chef",
             email:        			 "lex@diamond.com",
             password: 				 "immobilarity",
             password_confirmation:   "immobilarity"
    )
  end
end