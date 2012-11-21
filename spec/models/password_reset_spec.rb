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
  	let(:user)   { { "user" { "password" => "password", "password_confirmation" => "password" } } }
    let(:result) { reseter.update_user(user) }

    it "should " do
      
THIS IS WHERE I'M UP TO MUTHA FUCKER!!!!!!!
  end
end