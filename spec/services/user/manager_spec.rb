module User; class Manager; def self.delegate(*args); end; end; end
class UserRecord; end
class WrongClassError < StandardError; end

require_relative '../../spec_helper_lite'
require_relative '../../../app/models/user/manager'

describe User::Manager do
  let(:record) { OpenStruct.new perishable_token: 'FAKE' }
  let(:user)   { User::Manager.new(record) }

  context "without user record" do
    it 'returns and error' do
      ->{ User::Manager.new(Object.new) }.should raise_error WrongClassError
    end
  end

  context "with user record" do
    before { mock(record).class { UserRecord } }

    describe '#initialize' do

      context "with user record" do
        it 'expects & sets the record' do
          user.record.should eq record
        end
      end
    end

    describe '#add_to_database' do
      let(:result) { user.add_to_database }

      before do
        mock(record).save { true }
        mock(user).send_welcome_email { 'MAIL DELIVERED' }
      end

      it 'delivers the user an email' do
      	result.should eq 'MAIL DELIVERED'
      end

      it 'generates a perishable token' do
        result
        record.perishable_token.should_not eq 'FAKE'
      end
    end

    describe '#unsubscribe' do
      before do
        mock(record).save { true }
        user.unsubscribe
      end

      it 'should change the users subscription' do
        user.should_not be_subscribed
      end

      it "resets the user's perishable_token" do
        record.perishable_token.should_not eq 'FAKE'
      end
    end

    describe "#save_invite_sending_user" do
      let(:result) { user.save_invite_sending_user }

      context "existing user" do
        before { mock(record).id { 1 } }

        it "does nothing" do
          result.should be
        end
      end

      context "new user" do
        before do
          mock(record).id { nil }
          mock(user).add_to_database { true }
        end

        it "adds the user to the database" do
          result.should be
        end
      end
    end
  end
end