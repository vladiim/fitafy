# fitafy

[ ![Codeship Status for vladiim/fitafy](https://www.codeship.io/projects/5fb28c70-58aa-0130-9807-123138152df8/status?branch=master)](https://www.codeship.io/projects/1511)

fitafy is a fitness app that gets personal trainers new clients.

## Languages/framework

* _Server side_: Ruby on Rails
* _Client side_: Coffeescript

## Dependancies

* xcode
* Mac OS X
* Homebrew
* Github
* RVM
* Ruby            >=2.0.0-p0
* Ruby on Rails   >= 4.0+
* Git                       `brew install git`
* Postgres        >= 9.1.3+ `brew install postgres`
* Redis           >= 2.6.7  `brew install redis`
* node            >= 0.8.4  `brew install node`
* phantomjs                 `brew install phantomjs`
* Heroku toolbelt

## Set up

1. `cd fitafy`
2. RVM should ask you if you wish to trust the .rvmrc file - `y` then hit return
3. Install all the gems `bundle install`
4. Create the Postgres database `rake create:db`
5. Run the database migrations `rake db:migrate && rake db:test:prepare`
6. If you want some seed data `rake db:seed`
7. Fire up the server `rails s`

## Running The Tests

* Test the models (slow): `rake test:models`
* Test the services (fast): `rake test:services`
* Integration test (slow): `rake test:integration`
* Run all tests: `rake test:all`

## Deployment

* `rake deploy:prep`
* Let the tests run
* Follow the instructions

## Resque

We user resque as the queing worker.

* Start the redis server `redis-server`
* Start working: `rake resque:work QUEUE='*'`
* Web interface `resque-web`