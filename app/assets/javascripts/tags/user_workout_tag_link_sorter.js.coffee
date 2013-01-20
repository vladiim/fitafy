ready = ->
  user_show = $('#user_show_tags_list')
  if user_show.length > 0
    TagLinkSorter.init()
    WorkoutLoader.init($('#user_show_tags_list').data('url'))

$(document).on 'page:load', ready
$ -> ready()