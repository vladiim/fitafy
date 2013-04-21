Resque.redis = $redis if Rails.env == 'production'

# Don't do async in tests
Resque.inline = true if Rails.env == 'test'