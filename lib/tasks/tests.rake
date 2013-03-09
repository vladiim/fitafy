namespace 'test' do

  desc "Runs all rspec tests"
  task :rspec do
    sh "rspec spec"
  end
  
  desc "Runs all the jasmine tests"
  task :jasmine do
    # sh "guard-jasmine -e development"
  end
  
  desc "Test for accessibility"
  task :accessibility do
    # TODO
  end
  
  desc "Runs all tests"
  task all: [:rspec, :jasmine] do
    sh "cucumber"
  end
end