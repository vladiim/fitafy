require_relative '../spec_helper'
# require_relative '../../app/models/facebook_user'

describe FacebookUser do
  let(:auth)    { OpenStruct.new uid: 1 }
  let(:fb_user) { FacebookUser.new auth }

  describe "#update_or_create" do
    context "#facebook user exsists" do
      it "updates the user" do
        mock(fb_user).find_user_by_uid { true }
        mock(fb_user).set_user_details { true }
        fb_user.update_or_create.should be
      end
    end

    context "#facebook user does not exsists" do
      it "creates the user" do
        mock(fb_user).find_user_by_uid { false }
        mock(fb_user).set_user_details { true }
        fb_user.update_or_create.should be
      end
    end
  end

  describe "find_user_by_uid" do
    context "user exists" do
      it "returns true" do
        user = Object.new
        mock(User).find_by_uid(auth.uid) { user }
        fb_user.find_user_by_uid.should eq user
      end
    end

    context "user doesn't exist" do
      it "returns false" do
        mock(User).find_by_uid(auth.uid) { false }
        fb_user.find_user_by_uid.should eq false
      end
    end
  end

  describe "#set_user_details" do
    it "updates the user's details" do
      user = Object.new
      fb_user.user = user
      mock(fb_user).ensure_unique_username
      mock(fb_user).set_uid
      mock(fb_user).set_email
      mock(fb_user).set_provider
      mock(fb_user).set_oauth_token
      mock(fb_user).set_oauth_expires_at
      mock(user).save! { user }
      fb_user.set_user_details.should eq user
    end
  end

  describe "#ensure_unique_username" do
    context "username exists" do
      context "different user has the name" do
        it "changes the name and checks again" do
          user = OpenStruct.new username: "NAME"
          user2 = OpenStruct.new username: "NAME"
          mock(fb_user).user = user
          mock(User).find_by_username { user2 }
          fb_user.ensure_unique_username.should "NAME-1"
        end
      end
    end
  end

  describe "#set_uid" do
    it "sets the user's uid" do
      auth = OpenStruct.new(uid: 1)
      user = OpenStruct.new
      fb_user = FacebookUser.new(auth)
      fb_user.user = user
      fb_user.set_uid.should eq 1
    end
  end

  describe "#set_email" do
    it "sets the user's email" do
      auth = OpenStruct.new(info: OpenStruct.new(email: "EMAIL"))
      user = OpenStruct.new
      fb_user = FacebookUser.new(auth)
      fb_user.user = user
      fb_user.set_email.should eq "EMAIL"
    end
  end

  describe "#set_provider" do
    it "sets the user's provider" do
      auth = OpenStruct.new(provider: "PROVIDER")
      user = OpenStruct.new
      fb_user = FacebookUser.new(auth)
      fb_user.user = user
      fb_user.set_provider.should eq "PROVIDER"
    end
  end

  describe "#set_oauth_token" do
    it "sets the user's oauth token" do
      auth = OpenStruct.new(credentials: OpenStruct.new(token: "TOKEN"))
      user = OpenStruct.new
      fb_user = FacebookUser.new(auth)
      fb_user.user = user
      fb_user.set_oauth_token.should eq "TOKEN"
    end
  end

  describe "#set_oauth_expires_at" do
    it "sets the user's oauth token" do
      auth = OpenStruct.new(credentials: OpenStruct.new(expires_at: "EXPIRES"))
      mock(Time).at(auth.credentials.expires_at) { "EXPIRES" }
      user = OpenStruct.new
      fb_user = FacebookUser.new(auth)
      fb_user.user = user
      fb_user.set_oauth_expires_at.should eq "EXPIRES"
    end
  end
end