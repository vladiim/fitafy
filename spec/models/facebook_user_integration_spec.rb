require "spec_helper"

describe FacebookUser do
    let(:auth) { { "uid" => '12345', 
                   "info" => { "name" => "FACEBOOK NAME", 
                           "email" => "EMAIL@EMAIL.COM" },
                   "credentials" => { "token" => "1234",
                                  "expires_at" => 4503662457 } } }

  describe ".from_auth" do
    let(:result) { FacebookUser.from_auth auth }

    it "turns expires_at to date time" do
      result.oauth_expires_at.should be_a Time
      result.oauth_expires_at.should eq Time.at(4503662457)
    end

    it "formats the username" do
      result.username.should eq "facebook-name"
    end

  	context "no existing FacebookUser" do
      it "makes a new FacebookUser" do
        result.should be_a FacebookUser
        result.should_not be_persisted
      end

      it "uses the given auth info for attributes" do
        result.uid.should              eq '12345'
        result.email.should            eq 'EMAIL@EMAIL.COM'
        result.oauth_token.should      eq '1234'
        result.provider.should         eq "facebook"
      end

      it "makes a new User" do
        user = FacebookUser.from_auth(auth).user
        user.should be_a User
        user.should_not be_persisted
      end
  	end

    context "with existing FacebookUser" do

      it "updates FacebookUser" do
        uid = auth.fetch("uid")
        create :facebook_user, uid: uid
        result.should be_persisted
      end
    end
  end
end