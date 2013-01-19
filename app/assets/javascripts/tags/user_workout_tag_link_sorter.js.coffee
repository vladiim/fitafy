$ ->
  user_show = $('#user_show_tags_list')
  if user_show.length > 0
    WorkoutLoader.url = $('#user_show_tags_list').data('url')
    TagLinkSorter.init()