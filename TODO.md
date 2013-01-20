# up to

# deploy integration step
* replicate db
	- heroku addons:add heroku-postgresql:blah --form HEROKU_POSTGRESQL_BLAH
* test migrations on db copy

# Notes
* start redis: redis-server /usr/local/etc/redis.conf
* Server not working:
	- PATH=/usr/local/sbin:$PATH 
	- sudo nginx -t
	- sudo nginx (start nginx server)

# Trending
	- Favorited workout
	- Printed workout
	- Copied workout
* Username clickable & in title username/workout_name
* workout - query workout.all + muscle tag via js - manage limit of 30

# To do
* show workout & workout_exercise form when you hover over the element - note, add a contingency to check if the user is the owner, only show the hover function if they are an owner

* create a guest user model

* cache all exercise find
* when logged in your root_path is your profile
* note to user's without workout in their profile (favorite a workout or create your own!)

# Func

* Revise favorite workout count to be like exercise (remove n+1)
* Order exercises in workouts
* Mail
  * someone favorited your workout
  * unsubscribe
  * edit settings