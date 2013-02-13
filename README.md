# fitafy

<!-- ![](./app/assets/images/logo_on_black_v01.jpeg) -->

fitafy is a fitness app that helps PTs manage their clients.

## Languages/framework

* _Server side_: Ruby on Rails
* _Client side_: Coffeescript

## Dependancies

* xcode
* Ruby            >=1.9.3-p194
* Ruby on Rails   >= 3.1+
* Postgres        >= 9.1.3+
* Redis           >= 2.6.7
* node            >= 0.8.4 `brew install node`
* Testacular      >= 0.4.0 `npm -g install testacular`
* Heroku toolbelt

## Additional dependancy suggestions

* Mac OS X
* Homebrew
* RVM

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

* Run 

* _Run Cucumber_: `cucumber`
* _Run Rspec_: `rspec spec`
* _Run jasmine_: `rails s` then visit http://localhost:3000/jasmine
* _Guard_: the command `guard` will run rspec & jasmine in the console and re-run tests as you press Crtl + s in tested files
