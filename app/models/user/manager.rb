module User
  class Manager

    attr_reader :record

  	def initialize(record)
      ensure_correct_class record
  	  @record = record
  	end

    def add_to_database
      update_perishable_token!
      record.save ? send_welcome_email : false
    end

    def unsubscribe
      record.subscribed = false
      update_perishable_token! if record.save
      record
    end

    alias_method :save_invited_user, :unsubscribe

    def save_invite_sending_user
      record.id ? true : add_to_database
    end

    def subscribed?
      record.subscribed == true
    end

    # --------------------------------------------------
    # Delegated methods: this is due to zeus not being able
    # to handle method delegation
    # --------------------------------------------------

    def perishable_token
      record.perishable_token
    end

    def email
      record.email
    end

    private

    def ensure_correct_class(record)
      unless record.class == UserRecord
        raise WrongClassError, "The record is a #{record.class} and should be a UserRecord"
      end
    end

    def update_perishable_token!
      record.perishable_token = dynamic_md5_digest
    end

    def send_welcome_email
      Resque.enqueue(SignupMailerSender, record.email)
    end

    def dynamic_md5_digest
      Digest::MD5.hexdigest("#{Time.now}-#{record.email}")
    end
  end
end