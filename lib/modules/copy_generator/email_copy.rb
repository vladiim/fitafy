module CopyGenerator
  module EmailCopy
  	def self.signup_subject
  	  'Welcome from the fitafy founders'
  	end

    def self.unsubscribe
      "We're sorry to see you've unsubscribed from our emails."
    end

    def self.invite_subject(email)
      "#{email}: Fitafy Invite"
    end
  end
end