
desc "Print deployment instructions"
task :instructions do
  p 'instructions'
end

desc "Prepare for deployment"
task deploy: [:test, :accessibility, :instructions]