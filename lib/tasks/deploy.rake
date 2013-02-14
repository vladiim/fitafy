desc "Deploy to staging"
task :staging do
  p "Pushing to staging master https://rocky-river-7142.herokuapp.com/"
  sh "git push staging master"

  p "Running rake db:migrate"
  sh "heroku run rake db:migrate --remote staging"
end

desc "Deploy to production"
task :production do
  p "Pushing to production"
  sh "git push heroku"

  p "Running rake db:migrate"
  sh "heroku run rake db:migrate --app fitafy"
end

desc "Print deployment instructions"
task :instructions do
  p '(1)  Ensure git status is clean'
  p '(2)  git push'
  p '(3)  rake staging'
  p '(4)  go to https://rocky-river-7142.herokuapp.com/'
  p '(5)  rake production'
  p '(6)  go to https://www.fitafy.com'
  p '(7)  git branch -d <old branch>'
  p '(8)  git checkout -b <new branch>'
end

desc "Prepare for deployment"
task deploy: [:test, :accessibility, :instructions]