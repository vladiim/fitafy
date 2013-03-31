module User
  class Manager

    attr_reader :record

  	def initialize(record)
  	  @record = record
  	end

    def add_to_database
      record.save
      SignupMailer.welcome_email(record).deliver
    end
  end
end