desc "Print deployment instructions"
task :instructions do
  p '(1) Ensure git status is clean'
  p '(2) Ensure jasmine tests are passing'
  p '(3) Integration test'
  p '(4) Stagging test'
  p '(5) Heroku push'
  p '(6) Heroku run rake db:migrate'
  p '(7) Test live env'
  p '(8) git branch -d <old branch>'
  p '(9) git checkout -b <new branch>'
end

desc "Prepare for deployment"
task deploy: [:test, :accessibility, :instructions]