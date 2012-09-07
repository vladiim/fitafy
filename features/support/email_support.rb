require 'action_mailer'

module EmailSupport

  ActionMailer::Base.delivery_method    = :test
  ActionMailer::Base.perform_deliveries = true

  def last_email
  	ActionMailer::Base.deliveries.last
  end
end

World EmailSupport