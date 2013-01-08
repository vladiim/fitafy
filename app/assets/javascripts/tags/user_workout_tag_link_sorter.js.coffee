$ ->
  user_show = $('#user_show_tags_list')
  if user_show.length > 0
    sorter = new TagLinkSorter
    sorter.url = $('#user_show_tags_list').data('url')
    sorter.init()