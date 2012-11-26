module MailerDefaultUrl

  def self.set_env_url
    if Rails.env == "development"
      "localhost:3000"
    elsif Rails.env == "test"
      "www.example.com"
    else
      "www.fitafy.com"
    end
  end
end