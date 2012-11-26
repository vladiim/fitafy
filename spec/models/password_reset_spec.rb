require 'spec_helper'

describe PasswordReset do
  let(:user) { create :user }
  let(:reseter) { PasswordReset.new(user) }

  it "sets the user as a variable" do
    reseter.user.should eq user
  end

  describe ".reset_password" do
    context "with exsisting user email" do
      before { PasswordReset.reset_password(user.email) }

      it "creates the user's perishable_token" do
        user.perishable_token.should_not eq ""
      end
    end

    context "without exsisting user email" do
      let(:result) { PasswordReset.reset_password("fake@email.com") }

      it "does nothing" do
        result.should eq nil
      end
    end
  end

  describe "#update_user" do
    let(:result) { reseter.update_user(params) }

    context "password & password_confirmation match" do
      let(:params) { {"password" => "password", "password_confirmation" => "password"} }

      it "updates the user" do
        result.should be
      end
    end

    context "password & password_confirmation don't match" do
      let(:params) { {"password" => "not_password", "password_confirmation" => "password"} }

      it "updates the user" do
        result.should_not be
      end
    end
  end
end