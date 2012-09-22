require "spec_helper"

describe FacebookUser do
  let(:fb_user)  { build :facebook_user }

  let(:auth) { { "uid" => '12345', 
                 "info" => { "name" => "FACEBOOK NAME", 
                         "email" => "EMAIL@EMAIL.COM" },
                 "credentials" => { "token" => "1234",
                                "expires_at" => 4503662457 } } }

  describe ".from_auth" do
    let(:result) { FacebookUser.from_auth auth }

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
        user = result.user
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

  describe "#format_username" do
    let(:fb_user)  { build :facebook_user, username: username }
    let(:result)   { fb_user.format_username }

    context "username doesn't belong to another user" do
      let(:username) { "FACEBOOK NAME" }
      before { mock(User).find_by_username(anything) { fb_user.user } }

      it "format the username" do
        result.should eq "facebook-name"
      end
    end

    context "username belongs to another user" do
      let(:other_user) { Object.new }
      let(:username)   { "facebook-name-1" }
      before { mock(User).find_by_username(anything) { other_user } }

      it "increments the username by one" do
        mock(fb_user).increment_username(anything) { "facebook-name-2" }
        result.should eq "facebook-name-2"
      end
    end
  end

  describe "#increment_username" do
    it "blah" do
      result.should make dis
    end
  end

  describe "#format_oath_expires_at" do
    let(:result) { fb_user.format_oath_expires_at }

    it "turns expires_at to date time" do
      result.should be_a Time
      result.should eq Time.at(4503662457)
    end
  end
end