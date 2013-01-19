$ ->
  workout_index = $('#workout_index_tag_list')
  if workout_index.length > 0
    WorkoutLoader.url = '/workouts'
    TagLinkSorter.init()