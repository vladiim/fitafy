module User
  class Manager

    attr_reader :record

  	def initialize(record)
  	  @record = record
  	end

    def add_to_database
      record.save ? send_welcome_email : false
    end

    private

    def send_welcome_email
      Resque.enqueue(SignupMailerSender, record.email)
      # SignupMailer.welcome_email(record).deliver
    end
  end
end