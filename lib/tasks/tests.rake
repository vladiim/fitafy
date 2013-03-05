# --------- RSPEC TESTS --------- #

desc "Runs all rspec tests"
task :rspec do
  sh "rspec spec"
end

# --------- JAVASCRIPT TESTS --------- #

desc "Runs all the jasmine tests"
task :jasmine do
  # sh "guard-jasmine -e development"
end

# --------- ACCESSIBILITY TESTS --------- #

desc "Test for accessibility"
task :accessibility do
  # TODO
end

# --------- ALL TESTS --------- #

desc "Runs all tests"
task test: [:rspec, :jasmine] do
  sh "cucumber"
end