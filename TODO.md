# deploy integration step
* replicate db
	- heroku addons:add heroku-postgresql:blah --form HEROKU_POSTGRESQL_BLAH
* test migrations on db copy

# Notes
* Server not working:
	- PATH=/usr/local/sbin:$PATH 
	- sudo nginx -t
	- sudo nginx (start nginx server)

# With Avdi
* Trending
	- Favorited workout
	- Printed workout
	- Copied workout
* Username clickable & in title username/workout_name
* workout - query workout.all + muscle tag via js - manage limit of 30

# To do
* ExerciseSwapper fix
* cach all exercises
* get turbo links working
* User permissions to see new features
* http://railscasts.com/episodes/387-cache-digests
* when logged in your root_path is your profile
* note to user's without workout in their profile (favorite a workout or create your own!)
* once cloudinary has fixed issue:
	- remove mokey patch on hash
	- set up resque (note, resque needs Hash to have read mothod)
* exercises are pop ups
* when you edit workout exercise instructions you open all exercise instruction forms, make it so it only opens the exercise you've clicked on

# Func

* Revise favorite workout count to be like exercise (remove n+1)
* Order exercises in workouts
* Mail
  * someone favorited your workout
  * unsubscribe
  * edit settings

# Services
* Mailchimp
* https://travis-ci.org/
* pingdom
* Chat/customer service http://www.olark.com/