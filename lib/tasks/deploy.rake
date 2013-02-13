desc "Print deployment instructions"
task :instructions do
  p '(1)  Ensure git status is clean'
  p '(2)  Ensure jasmine tests are passing'
  p '(3)  git push'
  p '(4)  git push staging master http://rocky-river-7142.herokuapp.com/'
  p '(5)  heroku run rake db:migrate --remote staging'
  p '(6)  Stagging test'
  p '(7)  Heroku push'
  p '(8)  Heroku run rake db:migrate'
  p '(9)  Test live env'
  p '(10) git branch -d <old branch>'
  p '(11) git checkout -b <new branch>'
end

desc "Prepare for deployment"
task deploy: [:test, :accessibility, :instructions]