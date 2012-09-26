require "spec_helper"

describe FacebookUser do
  let(:fb_user)  { build :facebook_user }

  let(:auth) { { "uid" => '12345', 
                 "info" => { "name" => "FACEBOOK NAME", 
                         "email" => "EMAIL@EMAIL.COM" },
                         "image" => "http://graph.facebook.com/664725038/picture?type=square",
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
        result.avatar.should           eq "facebook-name-profile.png"
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

    context "passed a normal username" do
      before do
        user     = build :user, username: "facebook-name"
        @fb_user = build :facebook_user, user: user
        @fb_user.increment_username
      end

      it "doesn't alter it" do
        @fb_user.username.should eq "facebook-name"
      end
    end
  end

  describe "#format_oath_expires_at" do
    let(:result) { fb_user.format_oath_expires_at }

    it "turns expires_at to date time" do
      result.should be_a Time
      result.should eq Time.at(4503662457)
    end

    it "is called before saving" do
      fb_user.oauth_expires_at = 4503662457
      fb_user.save
      fb_user.oauth_expires_at.should eq Time.at(4503662457)
    end
  end

  describe "#format_avatar_picture" do
    let(:user)    { build :user, avatar: "http://graph.facebook.com/664725038/picture?type=square" }
    let(:fb_user) { build :facebook_user, user: user }

    context "method call" do
      let(:large_profile_picture) { "LARGE PIC URL"}
      let(:picture_name) { "PICTURE NAME" }
      before { mock(large_profile_picture).read { large_profile_picture } }

      it "downloads the large pic and creates the user.avatar out of it" do
        fb_user.format_oath_expires_at
        fb_user.avatar.should eq "PICTURE NAME"
      end
    end

    describe "#large_profile_picture" do
      it "ensures the url link is for the large profile pic" do
        result = fb_user.format_avatar_picture
        result.should eq "http://graph.facebook.com/664725038/picture?type=large"
      end
    end

    describe "#picture_name" do
      it "returns the username with frills" do
        result = fb_user.picture_name
        result.should eq "#{user.username.gsub!(' ', '-')}-profile-pic.png"
      end
    end
  end
end