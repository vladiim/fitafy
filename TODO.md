# Efficiency

* Revise favorite workout count to be like exercise (remove n+1)

# With Avdi
* Refactor Workout, Exercise
* Trending
	- Favorited workout
	- Printed workout
	- Copied workout
* FaceBook user management
	- FB details in User model?
	- ensure_unique_username method
* Username clickable & in title username/workout_name
* Equipment tags
	- New Equipment model

# Next steps
* User & FBUser = matching pair
* for new - verify instantiated from pair
* for exsiting - verify updates with auth info

verify from auth = existing user & fb pair
create existing with different values


* alt period gives last command - check
* esc period

# Facebook
* Can sign up once but if I log out and sign up again it fails
* Code is ugly as fuck
* password_confirmation no longer works

# Functionality
* upload/manage photo
* friendly urls

# Refactor
* Extract workout methods that aren't to do with creating a workout

# Mail
* forgot password
* someone favorited your workout

# Services
* Mailchimp
* Sendgrid
* New Relic
* cloudinary