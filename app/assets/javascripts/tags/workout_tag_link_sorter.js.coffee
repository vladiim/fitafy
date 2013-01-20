ready = ->
  workout_index = $('#workout_index_tag_list')
  if workout_index.length > 0
    TagLinkSorter.init()
    WorkoutLoader.init('/workouts')

# $(document).on 'page:load', -> ready()
$ -> ready()