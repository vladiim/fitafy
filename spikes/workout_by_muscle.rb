# Trying to:
# 	* pass array of muscles to Workout
# 	* return ONLY workouts with all exercise.muscles

# Brendon got to work w/ this SQL query
# SELECT * FROM List WHERE ListId IN
# (
# select  L.ListId
# FROM Item I
# INNER JOIN
# ListItem LI ON I.ItemID = LI.ItemId
# INNER JOIN
# List L ON L.ListId = LI.ListID
# WHERE I.Attribute IN ('ATL', 'Dig')
# GROUP BY L.ListId
# HAVING COUNT(L.ListID) =2
# )

# Best i've got so far is:
# Workout.joins(:exercises).where{{ exercises => ( muscle.like_any ['back', 'chest']) }}.group(:id).having{{ count => (exercises = 2 ) }}
# But this returns workout w/ duplicate muscle e.g. 2 'back'
# Rather than exclusive