# # module ActionMailer
# #   class Base
# #   	def self.default(*args)
# #   	end

# #     def mail(*args)
# #       args[0]
# #     end

# #     def self.deliver(*args)
# #       'MAIL DELIVERED'
# #     end
# #   end
# # end

# require 'action_mailer'
# require_relative '../spec_helper_lite'
# require_relative '../../app/mailers/signup_mailer'

# describe SignupMailer do

#   let(:mailer) { SignupMailer }

#   describe '.welcome_email(user)' do
#   	let(:result) { mailer.welcome_email(user) }
#   	let(:user)   { OpenStruct.new email: 'USER EMAIL' }

#     it 'sends the right subjectline to the users email' do
#       result.inspect.should =~ signup_mailer
#     end
#   end
# end

# def signup_mailer
#   /Headers: <From: vlad@fitafy.com>, <to: USER EMAIL>, <Subject: Welcome from the fitafy founders>/
# end