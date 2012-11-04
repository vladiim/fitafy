# Notes
* Server not working:
	- PATH=/usr/local/sbin:$PATH 
	- sudo nginx -t
	- sudo nginx (start nginx server)

# With Avdi
# WorkoutForm js
	- filter workout modal - doesn't remove
	- cancel link not working
	- refactor both into toggle class
* Trending
	- Favorited workout
	- Printed workout
	- Copied workout
* FaceBook user management
	- profile pic
    - ask avdi re password approach
* Username clickable & in title username/workout_name
* friendly urls
* cloudinary uploader - test without it taking so long

# To do
* Add all of the update exercises
* Set up mail, new relic, facebook etc
* get turbo links working
* User workout names are unique
* SSL
* User permissions to see new features
* http://railscasts.com/episodes/387-cache-digests
* Workout levels (use bootstrap buttons)
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
* basic
  * privacy page
* Mail
  * forgot password
  * someone favorited your workout
  * unsubscribe
  * edit settings

# Services
* Mailchimp
* Sendgrid
* New Relic
* cloudinary
* google analytics
* pivotal tracker
* https://travis-ci.org/
* pingdom
* Chat/customer service http://www.olark.com/