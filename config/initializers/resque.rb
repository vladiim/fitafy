unless Rails.env == 'test'
  Resque.redis = $redis
end