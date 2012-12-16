require "spec_helper"

describe Activation do
  let(:activation) { Activation.new }

  describe "#initialize" do
    it "can set/get an email" do
      activation.email = "EMAIL"
      activation.email.should eq "EMAIL"
    end
  end

  describe "#resend" do
  	let(:email)  { "EMAIL" }
  	let(:user)   { Object.new }
  	let(:result) { activation.resend(email) }

    context "with a correct user email" do
      before do
      	mock(User).find_by_email(email) { user }
      	mock(user).send_welcome_email { true }
      end

      it "resends the user's welcome email" do
      	result.should be
      end
    end

    context "with an incorrect user email" do
      before { mock(User).find_by_email(email) { false } }

      it "returns false" do
      	result.should eq false
      end
    end
  end
end