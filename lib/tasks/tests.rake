namespace 'test' do
  desc "Runs all tests"
  task :all do
    sh "rspec spec"
  end
end