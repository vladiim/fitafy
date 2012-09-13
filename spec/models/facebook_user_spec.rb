require 'spec_helper'

describe FacebookUser do

  describe "#update_or_create" do

    context "exsisting user" do

  	  let(:user) { OpenStruct.new }
  	  let(:auth) { OpenStruct.new uid:      123,
  	                              provider: "provider",
  	                              uid:      "123" }
  
      before do
        mock(User).where("uid = ?", "123") { user }
        mock(user).first_or_initialize     { user }
        mock(auth).info.times(2)           { OpenStruct.new name: "name" }
        mock(auth).credentials.times(2)    { OpenStruct.new token: "token", 
        	                                                expires_at: Time.now }
        
      end

      it "updates the user's details" do
        FacebookUser.update_or_create(auth).should eq user
      end
    end
  end
end