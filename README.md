# fitafy

[ ![Codeship Status for vladiim/fitafy](https://www.codeship.io/projects/5fb28c70-58aa-0130-9807-123138152df8/status?branch=master)](https://www.codeship.io/projects/1511)

<!-- ![](./app/assets/images/logo_on_black_v01.jpeg) -->

fitafy is a fitness app that helps PTs manage their clients.

## Languages/framework

* _Server side_: Ruby on Rails
* _Client side_: Coffeescript

## Dependancies

* xcode
* Mac OS X
* Homebrew
* Git
* Github
* RVM
* Ruby            >=1.9.3-p194
* Ruby on Rails   >= 3.1+
* Postgres        >= 9.1.3+
* Redis           >= 2.6.7
* node            >= 0.8.4 `brew install node`
* phantomjs       `brew install phantomjs`
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

fitafy uses Cucumber for integration tests and rspec and jasmine to unit test Ruby and Coffescript respectively.

* Run integration tests:
	- `cucumber`
	- `rake phantom`

* Run unit tests:
    - `guard` will run & watch rspec & jasmine tests
    - You can also run each seperatley:
    	* `rake rspec`
    	* `rails s` then visit `http://localhost3000/jasmine
* Run all tests: `rake test`

## Deployment

* `rake deploy`
* Let the tests run
* Follow the instructions