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
      class SignupMailer; end

      let(:result) { user.add_to_database }

      before do
        mock(record).save { true }
        mock(SignupMailer).welcome_email(anything) { SignupMailer }
        mock(SignupMailer).deliver { 'MAIL DELIVERED' }
      end

      it 'delivers the user an email' do
      	result.should eq 'MAIL DELIVERED'
      end
    end
  end
end