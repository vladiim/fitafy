require_relative '../../spec_helper_lite'
require_relative '../../../app/models/user/manager'

describe User::Manager do
  let(:record) { Object.new }
  let(:user)   { User::Manager.new(record) }

  context 'correct record' do
    describe '#initialize' do
      it 'expects & sets the record' do
      	user.record.should eq record
      end
    end

    describe '#add_to_database' do
      let(:result) { user.add_to_database }

      before { mock(record).save { true } }

      it 'delivers the user an email' do
      	result.should eq 'MAIL DELIVERED'
      end
    end
  end
end

class SignupMailer
  def self.welcome_email(user)
  	self
  end

  def self.deliver
  	'MAIL DELIVERED'
  end
end