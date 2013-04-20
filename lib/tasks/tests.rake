namespace 'test' do
  desc "Runs all tests"
  task :all do
    sh "SLOW_SPECS=true rspec spec"
  end
end