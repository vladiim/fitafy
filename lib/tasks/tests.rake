namespace 'test' do

  desc "Runs just the model tests"
  task :models do
    sh "rspec spec/models"
  end

  desc "Runs just the data model tests"
  task :data_models do
    sh "rspec spec/data_models"
  end

  desc "Runs just the integration tests"
  task :integration do
    sh "rspec spec/integration"
  end

  desc "Runs all the jasmine tests"
  task :jasmine do
    sh "guard-jasmine"
  end

  desc "Runs all tests"
  task :all do
    sh "rspec spec"
    # something for client-side
  end
end