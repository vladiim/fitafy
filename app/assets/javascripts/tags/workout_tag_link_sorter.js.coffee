$ ->
  workout_index = $('#workout_index_tag_list')
  if workout_index.length > 0
    sorter = new TagLinkSorter
    sorter.url = '/workouts'
    sorter.init()