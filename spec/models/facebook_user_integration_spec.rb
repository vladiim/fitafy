require "spec_helper"

describe FacebookUser do

  describe ".from_auth" do
    let(:auth) { { uid: '12345', 
    				       info: { name: "FACEBOOK NAME", 
    								       email: "EMAIL@EMAIL.COM" },
    							 credentials: { token: "1234",
    								              expires_at: 4503662457 } } }

  	context "no existing FacebookUser" do
      it "makes a new FacebookUser" do
        result = FacebookUser.from_auth auth
        result.should be_a FacebookUser
        result.should_not be_persisted
      end

      it "uses the given auth info for attributes" do
        result = FacebookUser.from_auth auth
        result.uid.should eq '12345'
        result.username.should eq 'FACEBOOK NAME'
        result.email.should eq 'EMAIL@EMAIL.COM'
        result.oauth_token.should eq '1234'
        result.oauth_expires_at.should eq 4503662457
      end

      it "makes a new User" do
        user = FacebookUser.from_auth(auth).user
        user.should be_a User
        user.should_not be_persisted
      end
  	end

    context "with existing FacebookUser" do
      it "next thing to fix" do
        FacebookUser.from_auth.should eq "blah blah fail fail"
      end
    end
  end
end