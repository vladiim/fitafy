# --------- RSPEC TESTS --------- #

desc "Runs all rspec tests"
task :rspec do
  sh "rspec spec"
end

# --------- JAVASCRIPT TESTS --------- #

desc "Runs all the jasmine tests"
task :jasmine do
  # TODO: do this with testacular so it's run across browsers
end

# --------- ACCESSIBILITY TESTS --------- #

desc "Test for accessibility"
task :accessibility do
  # TODO
end

# --------- ALL TESTS --------- #

desc "Runs all tests"
# task test: [:rspec, :jasmine] do
task test: [:rspec] do
  sh "cucumber"
end