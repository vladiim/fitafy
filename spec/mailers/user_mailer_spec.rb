require "spec_helper"

describe UserMailer do

  describe "#sign_up_welcome" do
    let(:trainer) { OpenStruct.new username: "jamel", email: "elgin@turner.com" }
    let(:mail)    { UserMailer.sign_up_welcome(trainer) }

    it "renders the subject" do
      mail.subject.should eq "Welcome to fitafy!"
    end

    it "sends the trainer an email" do
      mail.to.should eq [trainer.email]
    end

    it "sends the email from snapz@fitafy" do
      mail.from.should eq ["vlad@fitafy.com"]
    end

    it "assigns a username" do
      mail.body.encoded.should match trainer.username
    end
  end
end