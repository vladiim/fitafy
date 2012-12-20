require "spec_helper"

describe FacebookUser do
  let(:fb_user)  { build :facebook_user }

  let(:auth) { { "uid" => '12345', 
                 "info" => { "name" => "FACEBOOK NAME", 
                         "email" => "EMAIL@EMAIL.COM",
                         "image" => "http://graph.facebook.com/664725038/picture?type=square" },
                 "credentials" => { "token" => "1234",
                                "expires_at" => 4503662457 } } }

  describe "relationships" do
    it { should have_one :user }
  end

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
      let(:uid) { auth.fetch("uid") }

      # before do
      #   mock.instance_of(FacebookUser).format_avatar_picture { true }
      # end

      it "updates FacebookUser" do
        create :facebook_user, uid: uid
        result.should be_persisted
      end

      it "ensures its user is a trainer" do
        create :facebook_user, uid: uid
        result.user.should be_trainer
      end
    end
  end

  describe "#format_username" do
    let(:fb_user)  { build :facebook_user, username: username }
    let(:result)   { fb_user.format_username }

    context "username doesn't belong to another user" do
      let(:username) { "FACEBOOK NAME" }
      before { mock(User).find_all_by_username(anything) { [fb_user.user] } }

      it "format the username" do
        result.should be
        fb_user.username.should eq 'facebook-name'
      end
    end

    context "username belongs to another user" do
      let(:other_user) { Object.new }
      let(:username)   { "facebook-name-1" }

      before do
        mock(User).find_all_by_username(anything) { [other_user, fb_user.user] }
        mock(other_user)
      end

      it "increments the username" do
        mock(fb_user).increment_username
        result.should be
      end
    end
  end

  describe "#increment_username" do
    it "adds one to the username" do
      [0, 1, 10, 100, 1000, 10000].each do |n|
        user    = build :user, username: "facebook-name-#{n}"
        fb_user = build :facebook_user, user: user
        fb_user.increment_username
        fb_user.username.should eq "facebook-name-#{(n+1)}"
      end
    end

    it "only matches the last number" do
      fb_user.username = "with-1-extra-400-numbers-1"
      result = fb_user.increment_username
      fb_user.username.should eq "with-1-extra-400-numbers-2"
    end

    it "is called before saving" do
      create :user, username: "facebook-name-20000"
      fb_user.username = "facebook-name-20000"
      fb_user.save
      fb_user.username.should eq "facebook-name-20001"
    end
  end

  describe "#format_password" do
    it "sets the user's password to their token" do
      fb_user = FacebookUser.from_auth(auth)
      fb_user.user.password.should eq "81dc9bdb52d04dc20036dbd8313ed055"
      # note MD5.hexdigest of 1234 is the hexdigest above
    end
  end
end